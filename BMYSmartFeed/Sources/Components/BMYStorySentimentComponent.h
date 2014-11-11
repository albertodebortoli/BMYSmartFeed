//
//  BMYStorySentimentComponent.h
//  BMYSmartFeed
//
//  Created by Alberto De Bortoli on 13/10/2014.
//  Copyright (c) 2014 Beamly. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@class BMYStoryModel;

@interface BMYStorySentimentComponent : UIViewController

@property (nonatomic, strong) BMYStoryModel *story;

- (instancetype)initWithStory:(BMYStoryModel *)story;

@end
