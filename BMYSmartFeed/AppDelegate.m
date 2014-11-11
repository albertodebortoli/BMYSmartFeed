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
#import "BMYStoryModel.h"
#import "BMYFeedModel.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    // shit
    
    NSMutableArray *stories = [NSMutableArray array];
    
    BMYStoryModel *m1 = [[BMYStoryModel alloc] initWithIdentifier:nil title:@"Title1" message:@"Message1" isLiked:NO numberOfLikes:1];
    BMYStoryModel *m2 = [[BMYStoryModel alloc] initWithIdentifier:nil title:@"Title2" message:@"Message2" isLiked:NO numberOfLikes:2];
    BMYStoryModel *m3 = [[BMYStoryModel alloc] initWithIdentifier:nil title:@"Title3" message:@"Message3" isLiked:NO numberOfLikes:3];
    BMYStoryModel *m4 = [[BMYStoryModel alloc] initWithIdentifier:nil title:@"Title4" message:@"Message4" isLiked:NO numberOfLikes:4];
    BMYStoryModel *m5 = [[BMYStoryModel alloc] initWithIdentifier:nil title:@"Title5" message:@"Message5" isLiked:NO numberOfLikes:5];
    BMYStoryModel *m6 = [[BMYStoryModel alloc] initWithIdentifier:nil title:@"Title6" message:@"Message6" isLiked:NO numberOfLikes:6];
    BMYStoryModel *m7 = [[BMYStoryModel alloc] initWithIdentifier:nil title:@"Title7" message:@"Message7" isLiked:NO numberOfLikes:7];
    BMYStoryModel *m8 = [[BMYStoryModel alloc] initWithIdentifier:nil title:@"Title8" message:@"Message8" isLiked:NO numberOfLikes:8];
    BMYStoryModel *m9 = [[BMYStoryModel alloc] initWithIdentifier:nil title:@"Title9" message:@"Message9" isLiked:NO numberOfLikes:9];
    BMYStoryModel *m10 = [[BMYStoryModel alloc] initWithIdentifier:nil title:@"Title10" message:@"Message10" isLiked:NO numberOfLikes:10];
    BMYStoryModel *m11 = [[BMYStoryModel alloc] initWithIdentifier:nil title:@"Title11" message:@"Message11" isLiked:NO numberOfLikes:11];
    BMYStoryModel *m12 = [[BMYStoryModel alloc] initWithIdentifier:nil title:@"Title12" message:@"Message12" isLiked:NO numberOfLikes:12];
    BMYStoryModel *m13 = [[BMYStoryModel alloc] initWithIdentifier:nil title:@"Title13" message:@"Message13" isLiked:NO numberOfLikes:13];
    BMYStoryModel *m14 = [[BMYStoryModel alloc] initWithIdentifier:nil title:@"Title14" message:@"Message14" isLiked:NO numberOfLikes:14];
    BMYStoryModel *m15 = [[BMYStoryModel alloc] initWithIdentifier:nil title:@"Title15" message:@"Message15" isLiked:NO numberOfLikes:15];
    BMYStoryModel *m16 = [[BMYStoryModel alloc] initWithIdentifier:nil title:@"Title16" message:@"Message16" isLiked:NO numberOfLikes:16];
    BMYStoryModel *m17 = [[BMYStoryModel alloc] initWithIdentifier:nil title:@"Title17" message:@"Message17" isLiked:NO numberOfLikes:17];
    BMYStoryModel *m18 = [[BMYStoryModel alloc] initWithIdentifier:nil title:@"Title18" message:@"Message18" isLiked:NO numberOfLikes:18];
    BMYStoryModel *m19 = [[BMYStoryModel alloc] initWithIdentifier:nil title:@"Title19" message:@"Message19" isLiked:NO numberOfLikes:19];
    
    [stories addObject:m1];
    [stories addObject:m2];
    [stories addObject:m3];
    [stories addObject:m4];
    [stories addObject:m5];
    [stories addObject:m6];
    [stories addObject:m7];
    [stories addObject:m8];
    [stories addObject:m9];
    [stories addObject:m10];
    [stories addObject:m11];
    [stories addObject:m12];
    [stories addObject:m13];
    [stories addObject:m14];
    [stories addObject:m15];
    [stories addObject:m16];
    [stories addObject:m17];
    [stories addObject:m18];
    [stories addObject:m19];
    
    BMYFeedModel *feedModel = [[BMYFeedModel alloc] initWithStories:stories];
    
    BMYFeedComponent *feedComponent = [[BMYFeedComponent alloc] initWithFeedModel:feedModel];
    UINavigationController *nc = [[UINavigationController alloc] initWithRootViewController:feedComponent];
    self.window.rootViewController = nc;
    [self.window makeKeyAndVisible];
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
