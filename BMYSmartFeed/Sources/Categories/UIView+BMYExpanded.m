//
//  UIView+BMYExpanded.m
//  BMYSmartFeed
//
//  Created by Alberto De Bortoli on 13/10/2014.
//  Copyright (c) 2014 Beamly. All rights reserved.
//

#import "UIView+BMYExpanded.h"

@implementation UIView (BMYExpanded)

- (void)resizeToFitSubviews {
    // 1 - calculate size
    CGRect r = CGRectZero;
    for (UIView *v in [self subviews])
    {
        r = CGRectUnion(r, v.frame);
    }
    
    // 2 - move all subviews inside
    CGPoint fix = r.origin;
    for (UIView *v in [self subviews])
    {
        v.frame = CGRectOffset(v.frame, -fix.x, -fix.y);
    }
    
    // 3 - move frame to negate the previous movement
    r = CGRectOffset(r, fix.x, fix.y);
    
    [self setFrame:r];
}

@end
