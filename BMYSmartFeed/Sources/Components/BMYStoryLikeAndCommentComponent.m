//
//  BMYStoryLikeAndCommentComponent.m
//  BMYSmartFeed
//
//  Created by Alberto De Bortoli on 13/10/2014.
//  Copyright (c) 2014 Beamly. All rights reserved.
//

#import "BMYStoryLikeAndCommentComponent.h"
#import "BMYStoryMutator.h"

@implementation BMYStoryLikeAndCommentComponent

- (instancetype)initWithStory:(BMYStoryModel *)story {
    if ((self = [super init])) {
        _story = story;
    }
    return self;
}

#pragma mark - BMYStoryLikeAndCommentViewDelegate

- (void)storyLikeAndCommentViewDidReceiveTapOnLike:(BMYStoryLikeAndCommentView *)view {
    [BMYStoryMutator applyLikeMutation:self.story];
}

- (void)storyLikeAndCommentViewDidReceiveTapOnDislike:(BMYStoryLikeAndCommentView *)view {
    [BMYStoryMutator applyDislikeMutation:self.story];
}

- (void)storyLikeAndCommentViewDidReceiveTapOnComment:(BMYStoryLikeAndCommentView *)view {
    
}

@end
