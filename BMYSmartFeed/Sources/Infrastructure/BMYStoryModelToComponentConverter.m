//
//  BMYStoryModelToComponentConverter.m
//  BMYSmartFeed
//
//  Created by Alberto De Bortoli on 09/10/2014.
//  Copyright (c) 2014 Beamly. All rights reserved.
//

#import "BMYStoryModelToComponentConverter.h"
#import "BMYLayoutComponent.h"
#import "BMYStoryHeaderComponent.h"
#import "BMYStorySentimentComponent.h"
#import "BMYStoryLikeAndCommentComponent.h"
#import "BMYStoryModel.h"

@implementation BMYStoryModelToComponentConverter

#pragma mark - BMYModelInfraProtocol

+ (BMYLayoutComponent *)componentForModel:(BMYStoryModel *)model {
    UIView *view = [[UIView alloc] init];
    view.clipsToBounds = YES;
    
    struct BMYLayoutComponentConfiguration a = {
        .spacing = 10.0f
    };
    
    NSArray *children = @[[[BMYStoryHeaderComponent alloc] initWithStory:model],
                          [[BMYStorySentimentComponent alloc] initWithStory:model],
                          [[BMYStoryLikeAndCommentComponent alloc] initWithStory:model]];
    
    BMYLayoutComponent *component = [[BMYLayoutComponent alloc] initWithView:view
                                                               configuration:a
                                                                    children:children];
    return component;
}

@end
