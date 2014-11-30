//
//  ViewController.m
//  BMYSmartFeed
//
//  Created by Alberto De Bortoli on 09/10/2014.
//  Copyright (c) 2014 Beamly. All rights reserved.
//

#import "BMYFeedComponent.h"
#import "BMYStoryConsistencyManager.h"
#import "BMYStoryMutator.h"
#import "BMYStoryModelToComponentConverter.h"
#import "BMYStoryComponentToViewConverter.h"
#import "BMYStoryModel.h"
#import "BMYFeedModel.h"
#import "BMYLayoutComponent.h"

@interface BMYFeedComponent () <BMYStoryConsistencyManagerDelegate>

@property (nonatomic, strong) BMYFeedModel *feedModel;
@property (nonatomic, strong, readonly) NSMutableDictionary *componentStore;

@end

@implementation BMYFeedComponent

- (void)dealloc {
    [[BMYStoryConsistencyManager sharedInstance] deregisterDelegate:self];
}

- (instancetype)initWithFeedModel:(BMYFeedModel *)feedModel {
    NSParameterAssert(feedModel);
    if ((self = [super initWithNibName:nil bundle:nil])) {
        _feedModel = [feedModel copy];
        _componentStore = [NSMutableDictionary dictionary];
        [[BMYStoryConsistencyManager sharedInstance] registerDelegate:self];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = NSLocalizedString(@"Smart Feed", nil);
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cellReuseId"];
    [self.tableView reloadData];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.feedModel.stories count];
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    BMYStoryModel *model = self.feedModel.stories[indexPath.row];
    BMYLayoutComponent *component = self.componentStore[model.identifier];
    if (!component) {
        component = [BMYStoryModelToComponentConverter componentForModel:model];
        self.componentStore[model.identifier] = component;
    }

    UIView *storyView = [BMYStoryComponentToViewConverter setupViewForComponent:component];
    return CGRectGetHeight(storyView.bounds);
}

- (CGFloat)tableView:(UITableView *)tableView estimatedHeightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 200.0f;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cellReuseId"];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    
    BMYStoryModel *model = self.feedModel.stories[indexPath.row];
    BMYLayoutComponent *component = self.componentStore[model.identifier];
    if (!component) {
        component = [BMYStoryModelToComponentConverter componentForModel:model];
        self.componentStore[model.identifier] = component;
    }
    
    UIView *storyView = [BMYStoryComponentToViewConverter setupViewForComponent:component];
    
    // smart recycling of component's view happens here
    
    for (UIView *subview in cell.contentView.subviews) {
        [subview removeFromSuperview];
    }
    
    [cell.contentView addSubview:storyView];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    BMYFeedComponent *vc = [[BMYFeedComponent alloc] initWithFeedModel:self.feedModel];
    [self.navigationController pushViewController:vc animated:YES];
    [self.tableView deselectRowAtIndexPath:indexPath animated:YES];
}

#pragma mark - BMYStoryConsistencyManagerDelegate

- (void)storyConsistencyManagerDidReceiveChangeNotificationForStoryModel:(BMYStoryModel *)model {
    [self _updateModel:model];
}

- (void)_updateModel:(BMYStoryModel *)model {
    NSUInteger indexOfObject = [self.feedModel.stories indexOfObject:model];
    
    if (indexOfObject != NSNotFound) {
        BMYLayoutComponent *component = [BMYStoryModelToComponentConverter componentForModel:model];
        self.componentStore[model.identifier] = component;
        [self.feedModel replaceObjectAtIndex:indexOfObject withObject:model];
        [self.tableView reloadData];
    }
}

@end
