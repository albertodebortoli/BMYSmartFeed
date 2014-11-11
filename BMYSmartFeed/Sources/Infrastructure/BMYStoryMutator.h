//
//  BMYStoryMutator.h
//  BMYSmartFeed
//
//  Created by Alberto De Bortoli on 09/10/2014.
//  Copyright (c) 2014 Beamly. All rights reserved.
//

#import <Foundation/Foundation.h>

@class BMYStoryMutator;
@class BMYStoryModel;

@interface BMYStoryMutator : NSObject

+ (void)applyLikeMutation:(BMYStoryModel *)storyModel;
+ (void)applyDislikeMutation:(BMYStoryModel *)storyModel;

@end
