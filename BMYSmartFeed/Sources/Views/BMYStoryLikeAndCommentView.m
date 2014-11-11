//
//  BMYStoryLikeAndCommentView.m
//  BMYSmartFeed
//
//  Created by Alberto De Bortoli on 09/10/2014.
//  Copyright (c) 2014 Beamly. All rights reserved.
//

#import "BMYStoryLikeAndCommentView.h"

@interface BMYStoryLikeAndCommentView ()

@property (nonatomic, strong) UIButton *likeButton;
@property (nonatomic, strong) UIButton *dislikeButton;
@property (nonatomic, strong) UILabel *youLikedThisLabel;

@end

@implementation BMYStoryLikeAndCommentView

- (instancetype)initWithFrame:(CGRect)frame {
    if ((self = [super initWithFrame:frame])) {

        self.likeButton = [[UIButton alloc] initWithFrame:CGRectZero];
        [self.likeButton setBackgroundImage:[UIImage imageNamed:@"like"] forState:UIControlStateNormal];
        [self addSubview:self.likeButton];
        UITapGestureRecognizer *likeTgr = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(likeTapped:)];
        [self.likeButton addGestureRecognizer:likeTgr];

        self.dislikeButton = [[UIButton alloc] initWithFrame:CGRectZero];
        [self.dislikeButton setBackgroundImage:[UIImage imageNamed:@"dislike"] forState:UIControlStateNormal];
        [self addSubview:self.dislikeButton];
        UITapGestureRecognizer *dislikeTgr = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(dislikeTapped:)];
        [self.dislikeButton addGestureRecognizer:dislikeTgr];
        
        self.youLikedThisLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        self.youLikedThisLabel.font = [UIFont systemFontOfSize:18];
        self.youLikedThisLabel.text = @"You liked this";
        
        [self addSubview:self.likeButton];
        [self addSubview:self.dislikeButton];
        [self addSubview:self.youLikedThisLabel];
        
        self.backgroundColor = [UIColor orangeColor];

        self.userInteractionEnabled = YES;
    }
    return self;
}

- (void)likeTapped:(UITapGestureRecognizer *)gestureRecognizer {
    [self.delegate storyLikeAndCommentViewDidReceiveTapOnLike:self];
}

- (void)dislikeTapped:(UITapGestureRecognizer *)gestureRecognizer {
    [self.delegate storyLikeAndCommentViewDidReceiveTapOnDislike:self];
}

- (void)layoutSubviews {
    [super layoutSubviews];
    CGRect bounds = self.bounds;
    
    CGFloat heightForStrip = self.isLiked ? 40.0 : 0.0;
    
    self.likeButton.frame = CGRectMake(0,
                                       0,
                                       CGRectGetWidth(bounds) / 2,
                                       CGRectGetHeight(bounds) - heightForStrip);
    self.dislikeButton.frame = CGRectMake(CGRectGetWidth(bounds) / 2,
                                          0,
                                          CGRectGetWidth(bounds) / 2,
                                          CGRectGetHeight(bounds) - heightForStrip);
    self.youLikedThisLabel.frame = CGRectMake(0,
                                              CGRectGetHeight(bounds) - heightForStrip,
                                              CGRectGetWidth(bounds),
                                              heightForStrip);
}

@end
