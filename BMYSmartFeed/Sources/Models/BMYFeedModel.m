//
//  BMYFeedModel.m
//  BMYSmartFeed
//
//  Created by Alberto De Bortoli on 28/10/2014.
//  Copyright (c) 2014 Beamly. All rights reserved.
//

#import "BMYFeedModel.h"

@interface BMYFeedModel ()

@property (nonatomic, strong) NSMutableArray *internalStories;

@end

@implementation BMYFeedModel

- (instancetype)initWithStories:(NSArray *)stories {
    if ((self = [super init])) {
        _internalStories = [stories mutableCopy];
    }
    return self;
}

- (instancetype)copy {
    return [[BMYFeedModel alloc] initWithStories:self.stories];
}

- (NSArray *)stories {
    return [NSArray arrayWithArray:self.internalStories];
}

- (void)replaceObjectAtIndex:(NSInteger)index withObject:(id)object {
    [self.internalStories replaceObjectAtIndex:index withObject:object];
}

@end
