//
//  BMYStoryConsistencyManager.h
//  BMYSmartFeed
//
//  Created by Alberto De Bortoli on 09/10/2014.
//  Copyright (c) 2014 Beamly. All rights reserved.
//

#import <Foundation/Foundation.h>

@class BMYStoryConsistencyManager;
@class BMYStoryModel;

@protocol BMYStoryConsistencyManagerDelegate <NSObject>

- (void)storyConsistencyManagerDidReceiveChangeNotificationForStoryModel:(BMYStoryModel *)model;

@end

@interface BMYStoryConsistencyManager : NSObject

+ (instancetype)sharedInstance;

- (void)registerDelegate:(id<BMYStoryConsistencyManagerDelegate>)delegate;
- (void)deregisterDelegate:(id<BMYStoryConsistencyManagerDelegate>)delegate;

- (void)updateStoryModel:(BMYStoryModel *)model;

@end
