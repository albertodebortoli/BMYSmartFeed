//
//  BMYStorySentimentComponent.m
//  BMYSmartFeed
//
//  Created by Alberto De Bortoli on 13/10/2014.
//  Copyright (c) 2014 Beamly. All rights reserved.
//

#import "BMYStorySentimentComponent.h"

@implementation BMYStorySentimentComponent

- (instancetype)initWithStory:(BMYStoryModel *)story {
    if ((self = [super init])) {
        _story = story;
    }
    return self;
}

@end
