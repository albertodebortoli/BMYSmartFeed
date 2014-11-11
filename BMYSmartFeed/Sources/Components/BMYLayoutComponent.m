//
//  BMYLayoutComponent.m
//  BMYSmartFeed
//
//  Created by Alberto De Bortoli on 09/10/2014.
//  Copyright (c) 2014 Beamly. All rights reserved.
//

#import "BMYLayoutComponent.h"

@interface BMYLayoutComponent ()

@property (nonatomic, readwrite) UIView *view;
@property (nonatomic, readwrite) struct BMYLayoutComponentConfiguration configuration;
@property (nonatomic, readwrite) NSArray *childComponents;

@end

@implementation BMYLayoutComponent

- (instancetype)initWithView:(UIView *)view configuration:(struct BMYLayoutComponentConfiguration)configuration children:(NSArray *)childComponents {
    if ((self = [super init])) {
        _view = view;
        _configuration = configuration;
        _childComponents = childComponents;
    }
    return self;
}

- (struct BMYLayoutComponentConfiguration)configuration {
    return _configuration;
}

- (NSArray *)childComponents {
    return _childComponents;
}

@end
