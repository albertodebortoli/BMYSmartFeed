//
//  BMYFeedModel.h
//  BMYSmartFeed
//
//  Created by Alberto De Bortoli on 28/10/2014.
//  Copyright (c) 2014 Beamly. All rights reserved.
//

#import "BMYBaseModel.h"

@interface BMYFeedModel : BMYBaseModel

@property (nonatomic, readonly) NSArray *stories;

- (instancetype)initWithStories:(NSArray *)stories;

- (void)replaceObjectAtIndex:(NSInteger)index withObject:(id)object;

@end
