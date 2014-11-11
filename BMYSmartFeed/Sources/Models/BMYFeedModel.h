//
//  BMYFeedModel.h
//  BMYSmartFeed
//
//  Created by Alberto De Bortoli on 28/10/2014.
//  Copyright (c) 2014 Beamly. All rights reserved.
//

#import "BMYBaseModel.h"

@interface BMYFeedModel : BMYBaseModel

@property (nonatomic, strong) NSMutableArray *stories;

- (instancetype)initWithStories:(NSArray *)stories;

@end
