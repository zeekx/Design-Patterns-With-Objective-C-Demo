//
//  Scribble.m
//  Design Patterns With Objective-c Demo
//
//  Created by yubinqiang on 16/6/23.
//  Copyright © 2016年 Zeek. All rights reserved.
//

#import "Scribble.h"
#import "Stroke.h"

static NSString *const kMark = @"mark";

@interface Scribble ()
@property (nonatomic, strong) id<Mark> mark;
@end

@implementation Scribble
- (instancetype)init {
    self = [super init];
    if (self) {
        self.mark = [[Stroke alloc] init];
    }
    return self;
}

- (void)addMark:(id<Mark>)aMark shouldAddToPreviousMark:(BOOL)add {
    [self willChangeValueForKey:kMark];
    if (add) {
        [[self.mark lastChild] addMark:aMark];
    } else {
        [self.mark addMark:aMark];
    }
    [self didChangeValueForKey:kMark];
}

- (void)removeMark:(id<Mark>)aMark {
    if (aMark == self.mark) {
        return;
    } else {
        [self willChangeValueForKey:kMark];
        [self.mark removeMark:aMark];
        [self didChangeValueForKey:kMark];
    }
}
@end
