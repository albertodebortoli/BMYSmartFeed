//
//  AppDelegate.m
//  BMYSmartFeed
//
//  Created by Alberto De Bortoli on 09/10/2014.
//  Copyright (c) 2014 Beamly. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "BMYFeedComponent.h"
#import "BMYFeedModel.h"
#import "BFStoryFactory.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    BMYFeedModel *feedModel = [[BMYFeedModel alloc] initWithStories:[BFStoryFactory mockedStories]];
    
    BMYFeedComponent *feedComponent = [[BMYFeedComponent alloc] initWithFeedModel:feedModel];
    UINavigationController *nc = [[UINavigationController alloc] initWithRootViewController:feedComponent];
    self.window.rootViewController = nc;
    [self.window makeKeyAndVisible];
    
    return YES;
}

@end
