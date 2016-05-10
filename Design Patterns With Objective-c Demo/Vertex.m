//
//  Vertex.m
//  Design Patterns With Objective-c Demo
//
//  Created by yubinqiang on 16/5/9.
//  Copyright © 2016年 Zeek. All rights reserved.
//

#import "Vertex.h"

@implementation Vertex

- (instancetype)initWithLocation:(CGPoint)location {
    self = [super init];
    if (self) {
        self.location = location;
    }
    return self;
}


- (void)addMark:(id<Mark>)mark {
    assert(NO);
}
- (void)removeMark:(id<Mark>)mark {
    assert(NO);
}

- (id<Mark>)childMarkAtIndex:(NSUInteger)index {
    assert(NO);
}

- (void)drawWithContext:(CGContextRef)context {
    CGContextAddLineToPoint(context, self.location.x, self.location.y);
}

#pragma mark - Copying
- (instancetype)copyWithZone:(NSZone *)zone {
    return [[[self class] allocWithZone:zone] initWithLocation:self.location];
}

@end
