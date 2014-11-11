//
//  ViewController.h
//  BMYSmartFeed
//
//  Created by Alberto De Bortoli on 09/10/2014.
//  Copyright (c) 2014 Beamly. All rights reserved.
//

#import <UIKit/UIKit.h>

@class BMYFeedModel;

@interface BMYFeedComponent : UITableViewController

- (instancetype)initWithFeedModel:(BMYFeedModel *)feedModel;

@end

