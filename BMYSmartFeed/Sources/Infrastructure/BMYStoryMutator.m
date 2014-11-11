//
//  BMYStoryMutator.m
//  BMYSmartFeed
//
//  Created by Alberto De Bortoli on 09/10/2014.
//  Copyright (c) 2014 Beamly. All rights reserved.
//

#import "BMYStoryMutator.h"
#import "BMYStoryConsistencyManager.h"
#import "BMYStoryModel.h"

@implementation BMYStoryMutator

+ (void)applyLikeMutation:(BMYStoryModel *)storyModel {
    if (storyModel.isLiked == YES) {
        return;
    }
    
    BMYStoryModel *newStoryModel = [[BMYStoryModel alloc] initWithIdentifier:storyModel.identifier
                                                                       title:storyModel.title
                                                                     message:storyModel.message
                                                                     isLiked:YES
                                                               numberOfLikes:(storyModel.numberOfLikes + 1)];
    [[BMYStoryConsistencyManager sharedInstance] updateStoryModel:newStoryModel];
}

+ (void)applyDislikeMutation:(BMYStoryModel *)storyModel {
    if (storyModel.isLiked == NO) {
        return;
    }
    
    BMYStoryModel *newStoryModel = [[BMYStoryModel alloc] initWithIdentifier:storyModel.identifier
                                                                       title:storyModel.title
                                                                     message:storyModel.message
                                                                     isLiked:NO
                                                               numberOfLikes:MIN(storyModel.numberOfLikes, storyModel.numberOfLikes - 1)];
    [[BMYStoryConsistencyManager sharedInstance] updateStoryModel:newStoryModel];
}

@end
