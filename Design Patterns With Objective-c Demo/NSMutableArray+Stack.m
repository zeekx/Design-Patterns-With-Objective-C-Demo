//
//  NSMutableArray+Stack.m
//  Design Patterns With Objective-c Demo
//
//  Created by yubinqiang on 16/6/28.
//  Copyright © 2016年 Zeek. All rights reserved.
//

#import "NSMutableArray+Stack.h"

@implementation NSMutableArray (Stack)
- (id)pop {
    id obj = self.lastObject;
    [self removeLastObject];
    return obj;
}
- (void)push:(id)object {
    if (object != nil) {
        [self addObject:object];
    } else {
        assert(NO);
    }
}
@end
