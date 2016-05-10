//
//  Stroke.m
//  Design Patterns With Objective-c Demo
//
//  Created by yubinqiang on 16/5/10.
//  Copyright © 2016年 Zeek. All rights reserved.
//

#import "Stroke.h"

@interface Stroke () {
}
@property (strong, nonatomic) NSMutableArray< id<Mark> > *children;
@end

@implementation Stroke
- (void)setLocation:(CGPoint)location {
    //Do nothing.
}

- (CGPoint)location {
    return _children.firstObject.location;
}

- (void)addMark:(id<Mark>)mark {
    [_children addObject:mark];
}

- (void)removeMark:(id<Mark>)mark {
    if ([_children containsObject:mark]) {
        [_children removeObject:mark];
    } else {
        [_children makeObjectsPerformSelector:@selector(removeMark:) withObject:mark];
    }
}

- (id<Mark>)childMarkAtIndex:(NSUInteger)index {
    id<Mark> child = nil;
    if (index < _children.count) {
        child = _children[index];
    }
    return child;
}

- (id<Mark>)lastChild {
    return _children.lastObject;
}

- (NSUInteger)count {
    return _children.count;
}


- (void)drawWithContext:(CGContextRef)context {
    CGContextMoveToPoint(context, self.location.x, self.location.y);
    for (id<Mark> mark in self.children) {
        [mark drawWithContext:context];
    }
    CGContextSetLineWidth(context, self.size.width);
    CGContextSetLineCap(context, kCGLineCapRound);
    CGContextSetStrokeColorWithColor(context, self.color.CGColor);
    CGContextStrokePath(context);
}
//1
//4
#pragma mark - Copying
- (id)copyWithZone:(NSZone *)zone {
    Stroke *copy = [[[self class] allocWithZone:zone] init];
    copy.color = self.color.copy;
    copy.size = self.size;
    copy.children = self.children.copy;
    return copy;
}
@end
