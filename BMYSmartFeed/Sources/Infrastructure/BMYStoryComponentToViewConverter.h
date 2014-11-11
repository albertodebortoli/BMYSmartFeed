//
//  BMYStoryComponentToViewConverter.h
//  BMYSmartFeed
//
//  Created by Alberto De Bortoli on 09/10/2014.
//  Copyright (c) 2014 Beamly. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@class BMYLayoutComponent;

@interface BMYStoryComponentToViewConverter : NSObject

+ (UIView *)setupViewForComponent:(BMYLayoutComponent *)component;

@end
