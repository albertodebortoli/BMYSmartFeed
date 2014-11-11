//
//  BMYStoryModelToComponentConverter.h
//  BMYSmartFeed
//
//  Created by Alberto De Bortoli on 09/10/2014.
//  Copyright (c) 2014 Beamly. All rights reserved.
//

#import <Foundation/Foundation.h>

@class BMYLayoutComponent;
@class BMYStoryModel;

@interface BMYStoryModelToComponentConverter : NSObject

+ (BMYLayoutComponent *)componentForModel:(BMYStoryModel *)model;

@end
