//
//  BMYStoryLikeAndCommentView.h
//  BMYSmartFeed
//
//  Created by Alberto De Bortoli on 09/10/2014.
//  Copyright (c) 2014 Beamly. All rights reserved.
//

#import <UIKit/UIKit.h>

@class BMYStoryLikeAndCommentView;

@protocol BMYStoryLikeAndCommentViewDelegate <NSObject>

- (void)storyLikeAndCommentViewDidReceiveTapOnLike:(BMYStoryLikeAndCommentView *)view;
- (void)storyLikeAndCommentViewDidReceiveTapOnDislike:(BMYStoryLikeAndCommentView *)view;
- (void)storyLikeAndCommentViewDidReceiveTapOnComment:(BMYStoryLikeAndCommentView *)view;

@end

@interface BMYStoryLikeAndCommentView : UIImageView

@property (nonatomic, weak) id<BMYStoryLikeAndCommentViewDelegate> delegate;
@property (nonatomic, assign) BOOL isLiked;

@end
