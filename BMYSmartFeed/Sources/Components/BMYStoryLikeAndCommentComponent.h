//
//  BMYStoryLikeAndCommentComponent.h
//  BMYSmartFeed
//
//  Created by Alberto De Bortoli on 13/10/2014.
//  Copyright (c) 2014 Beamly. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "BMYStoryLikeAndCommentView.h"

@class BMYStoryModel;

@interface BMYStoryLikeAndCommentComponent : UIViewController <BMYStoryLikeAndCommentViewDelegate>

@property (nonatomic, strong) BMYStoryModel *story;

- (instancetype)initWithStory:(BMYStoryModel *)story;

@end
