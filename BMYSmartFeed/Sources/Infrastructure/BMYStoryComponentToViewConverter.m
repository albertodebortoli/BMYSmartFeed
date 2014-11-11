//
//  BMYStoryComponentToViewConverter.m
//  BMYSmartFeed
//
//  Created by Alberto De Bortoli on 09/10/2014.
//  Copyright (c) 2014 Beamly. All rights reserved.
//

#import "BMYStoryComponentToViewConverter.h"
#import "BMYLayoutComponent.h"
#import "BMYStoryHeaderComponent.h"
#import "BMYStorySentimentComponent.h"
#import "BMYStoryLikeAndCommentComponent.h"
#import "BMYStoryModel.h"
#import "BMYStoryLikeAndCommentView.h"
#import "UIView+BMYExpanded.h"

@implementation BMYStoryComponentToViewConverter

+ (UIView *)_subviewAtIndex:(NSUInteger)index forView:(UIView *)view {
    if (index < [view.subviews count]) {
        return view.subviews[index];
    }
    return nil;
}

#pragma mark - BMYComponentToViewConverterProtocol

+ (UIView *)setupViewForComponent:(BMYLayoutComponent *)component {
    
    UIView *storyView = [[UIView alloc] init];
    storyView.backgroundColor = [UIColor yellowColor];
    
    NSUInteger viewCounter = 0;
    
    CGFloat currentY = 0;
    
    for (id child in component.childComponents) {
        if ([child isKindOfClass:[BMYStoryLikeAndCommentComponent class]]) {
            BMYStoryLikeAndCommentComponent *likeAndCommentComponent = (BMYStoryLikeAndCommentComponent *)child;
            
            BMYStoryLikeAndCommentView *likeAndCommentView = nil;
            UIView *nextView = [self _subviewAtIndex:viewCounter forView:storyView];
            if ([nextView isKindOfClass:[BMYStoryLikeAndCommentView class]]) {
                // nextView can be nil if the cell is not reused
                likeAndCommentView = (BMYStoryLikeAndCommentView *)nextView;
            }
            else {
                likeAndCommentView = [[BMYStoryLikeAndCommentView alloc] initWithFrame:CGRectZero];
                [storyView addSubview:likeAndCommentView];
            }
            
            likeAndCommentView.isLiked = likeAndCommentComponent.story.isLiked;
            likeAndCommentView.frame = CGRectMake(50, currentY, 120, 55 + (!!likeAndCommentComponent.story.isLiked * 40));
            likeAndCommentView.delegate = child;
            
            currentY += CGRectGetHeight(likeAndCommentView.frame);
            viewCounter++;
        }
        
        else if ([child isKindOfClass:[BMYStorySentimentComponent class]]) {
            BMYStorySentimentComponent *sentimentComponent = (BMYStorySentimentComponent *)child;
            
            UILabel *label = nil;
            UIView *nextView = [self _subviewAtIndex:viewCounter forView:storyView];
            if ([nextView isKindOfClass:[UILabel class]]) {
                // nextView can be nil if the cell is not reused
                label = (UILabel *)nextView;
            }
            else {
                label = [[UILabel alloc] initWithFrame:CGRectZero];
                [storyView addSubview:label];
            }

            label.frame = CGRectMake(0, currentY, 200, 30);
            label.text = [NSString stringWithFormat:@"number of likes: %li", sentimentComponent.story.numberOfLikes];
            label.backgroundColor = [UIColor orangeColor];
            
            currentY += CGRectGetHeight(label.frame);
            viewCounter++;
        }
        
        else if ([child isKindOfClass:[BMYStoryHeaderComponent class]]) {
            BMYStoryHeaderComponent *headerComponent = (BMYStoryHeaderComponent *)child;
            
            UILabel *label = nil;
            UIView *nextView = [self _subviewAtIndex:viewCounter forView:storyView];
            if ([nextView isKindOfClass:[UILabel class]]) {
                // nextView can be nil if the cell is not reused
                label = (UILabel *)nextView;
            }
            else {
                label = [[UILabel alloc] initWithFrame:CGRectZero];
                [storyView addSubview:label];
            }
            
            label.frame = CGRectMake(0, currentY, 300, 35);
            label.text = headerComponent.story.title;
            label.backgroundColor = [UIColor greenColor];
            
            currentY += CGRectGetHeight(label.frame);
            viewCounter++;
        }
        
        currentY += component.configuration.spacing;
    }
    
    [storyView resizeToFitSubviews];
    
    return storyView;
}

@end
