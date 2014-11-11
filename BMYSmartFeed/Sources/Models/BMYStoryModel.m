//
//  BMYStoryModel.m
//  BMYSmartFeed
//
//  Created by Alberto De Bortoli on 09/10/2014.
//  Copyright (c) 2014 Beamly. All rights reserved.
//

#import "BMYStoryModel.h"

@implementation BMYStoryModel

- (instancetype)initWithIdentifier:(NSString *)identifier title:(NSString *)title message:(NSString *)message isLiked:(BOOL)isLiked numberOfLikes:(NSUInteger)numberOfLikes {
    if ((self = [super init])) {
        _identifier = identifier ?: [[NSUUID UUID] UUIDString];
        _title = title;
        _message = message;
        _isLiked = isLiked;
        _numberOfLikes = numberOfLikes;
    }
    return self;
}

#pragma mark - Equality

- (BOOL)isEqual:(id)object {
    if (self == object) {
        return YES;
    }
    
    if (![object isKindOfClass:[self class]]) {
        return NO;
    }
    
    return [self isEqualToStoryModel:(BMYStoryModel *)object];
}

- (BOOL)isEqualToStoryModel:(BMYStoryModel *)object {
    if (!object) {
        return NO;
    }
    
    BOOL objectsMatch = [self.identifier isEqualToString:object.identifier];
    return objectsMatch;
}

- (NSUInteger)hash {
    return [self.identifier hash];
}

@end
