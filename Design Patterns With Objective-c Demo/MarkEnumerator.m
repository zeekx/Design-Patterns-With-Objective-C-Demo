//
//  MarkEnumerator.m
//  Design Patterns With Objective-c Demo
//
//  Created by yubinqiang on 16/6/28.
//  Copyright © 2016年 Zeek. All rights reserved.
//

#import "MarkEnumerator.h"
#import "NSMutableArray+Stack.h"

@interface MarkEnumerator ()
@property (strong, nonatomic) NSMutableArray *stack;
@end

@implementation MarkEnumerator
- (instancetype)initWithMark:(id<Mark>)mark {
    self = [super init];
    if (self) {
        
    }
    return self;
}

- (NSArray *)allObjects {
    return [[self.stack reverseObjectEnumerator] allObjects];
}


- (id)nextObject {
    return [self.stack pop];
}

- (void)traverAndBuildStackMark:(id<Mark>)mark {
    if (mark == nil) {
        return;
    }
    
    [self.stack push:mark];
    
    NSUInteger index = [mark count];
    id<Mark> childMark = nil;
    while ((childMark = [mark childMarkAtIndex:--index])) {
        [self traverAndBuildStackMark:childMark];
    }
}
@end
