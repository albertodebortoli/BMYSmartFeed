//
//  BMYStoryConsistencyManager.m
//  BMYSmartFeed
//
//  Created by Alberto De Bortoli on 09/10/2014.
//  Copyright (c) 2014 Beamly. All rights reserved.
//

#import "BMYStoryConsistencyManager.h"

@interface BMYStoryConsistencyManager ()

@property (nonatomic, strong) NSPointerArray *delegates;

@end

@implementation BMYStoryConsistencyManager

+ (instancetype)sharedInstance
{
    static dispatch_once_t pred = 0;
    __strong static id sharedObject = nil;
    dispatch_once(&pred, ^{
        sharedObject = [[BMYStoryConsistencyManager alloc] init];
    });
    return sharedObject;
}

- (instancetype)init {
    if ((self = [super init])) {
        _delegates = [NSPointerArray pointerArrayWithOptions:NSPointerFunctionsWeakMemory];
    }
    return self;
}

- (void)registerDelegate:(id<BMYStoryConsistencyManagerDelegate>)delegate {
    if ([delegate conformsToProtocol:@protocol(BMYStoryConsistencyManagerDelegate)]) {
        [self.delegates addPointer:(void *)(delegate)];
    }
}

- (void)deregisterDelegate:(id<BMYStoryConsistencyManagerDelegate>)delegate {
    NSUInteger indexToRemove = NSNotFound;
    NSArray *allDelegates = self.delegates.allObjects;
    for (NSInteger i = 0; i < allDelegates.count; i++) {
        if (allDelegates[i] == delegate) {
            indexToRemove = i;
            break;
        }
    }
    if (indexToRemove != NSNotFound) {
        [self.delegates removePointerAtIndex:indexToRemove];
    }
}

- (void)updateStoryModel:(BMYStoryModel *)model {
    for (id<BMYStoryConsistencyManagerDelegate> delegate in self.delegates.allObjects) {
        [delegate storyConsistencyManagerDidReceiveChangeNotificationForStoryModel:model];
    }
}

@end
