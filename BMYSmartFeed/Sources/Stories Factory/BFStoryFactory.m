//
//  BFStoryFactory.m
//  BMYSmartFeed
//
//  Created by Rui Peres on 14/11/2014.
//  Copyright (c) 2014 Beamly. All rights reserved.
//

#import "BFStoryFactory.h"
#import "BMYStoryModel.h"

@implementation BFStoryFactory

+ (NSArray *)mockedStories
{
    NSMutableArray *stories = [NSMutableArray array];
    
    for (int i = 1; i <= 20; i++)
    {
        NSString *title = [NSString stringWithFormat:@"Title%d",i];
        NSString *message = [NSString stringWithFormat:@"Message%d",i];

        BMYStoryModel *story = [[BMYStoryModel alloc] initWithIdentifier:nil title:title message:message isLiked:NO numberOfLikes:i];

        [stories addObject:story];
    }

    return [stories copy];
}

@end
