//
//  BMYStoryHeaderComponent.m
//  BMYSmartFeed
//
//  Created by Alberto De Bortoli on 14/10/2014.
//  Copyright (c) 2014 Beamly. All rights reserved.
//

#import "BMYStoryHeaderComponent.h"

@interface BMYStoryHeaderAvatarComponent : NSObject

@end

@interface BMYStoryHeaderTitleComponent : NSObject

@end

@interface BMYStoryHeaderComponent ()

@property (nonatomic, strong) BMYStoryHeaderAvatarComponent *avatar;
@property (nonatomic, strong) BMYStoryHeaderTitleComponent *title;

@end

@implementation BMYStoryHeaderComponent

- (instancetype)initWithStory:(BMYStoryModel *)story {
    if ((self = [super init])) {
        _story = story;
    }
    return self;
}

@end
