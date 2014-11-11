//
//  BMYStoryModel.h
//  BMYSmartFeed
//
//  Created by Alberto De Bortoli on 09/10/2014.
//  Copyright (c) 2014 Beamly. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BMYBaseModel.h"

@interface BMYStoryModel : BMYBaseModel

@property (nonatomic, copy, readonly) NSString *identifier;
@property (nonatomic, copy, readonly) NSString *title;
@property (nonatomic, copy, readonly) NSString *message;
@property (nonatomic, copy, readonly) NSString *avatarPath;
@property (nonatomic, assign, readonly) BOOL isLiked;
@property (nonatomic, assign, readonly) NSUInteger numberOfLikes;

- (instancetype)initWithIdentifier:(NSString *)identifier title:(NSString *)title message:(NSString *)message isLiked:(BOOL)isLiked numberOfLikes:(NSUInteger)numberOfLikes;

@end
