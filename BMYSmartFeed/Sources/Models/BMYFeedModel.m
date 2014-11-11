//
//  BMYFeedModel.m
//  BMYSmartFeed
//
//  Created by Alberto De Bortoli on 28/10/2014.
//  Copyright (c) 2014 Beamly. All rights reserved.
//

#import "BMYFeedModel.h"

@implementation BMYFeedModel

- (instancetype)initWithStories:(NSArray *)stories {
    if ((self = [super init])) {
        _stories = [stories mutableCopy];
    }
    return self;
}

- (instancetype)copy {
    return [[BMYFeedModel alloc] initWithStories:self.stories];
}

@end
