//
//  BMYLayoutComponent.h
//  BMYSmartFeed
//
//  Created by Alberto De Bortoli on 09/10/2014.
//  Copyright (c) 2014 Beamly. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

struct BMYLayoutComponentConfiguration {
    NSUInteger meh;
    CGFloat spacing;
};

@interface BMYLayoutComponent : NSObject

@property (nonatomic, readonly) UIView *view;
@property (nonatomic, readonly) struct BMYLayoutComponentConfiguration configuration;
@property (nonatomic, readonly) NSArray *childComponents;

- (instancetype)initWithView:(UIView *)view
               configuration:(struct BMYLayoutComponentConfiguration)configuration
                    children:(NSArray *)childComponents;

@end
