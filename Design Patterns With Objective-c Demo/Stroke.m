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
    return self.children.firstObject.location;
}

- (void)addMark:(id<Mark>)mark {
    [self.children addObject:mark];
}

- (void)removeMark:(id<Mark>)mark {
    if ([self.children containsObject:mark]) {
        [self.children removeObject:mark];
    } else {
        [self.children makeObjectsPerformSelector:@selector(removeMark:) withObject:mark];
    }
}

- (id<Mark>)childMarkAtIndex:(NSUInteger)index {
    id<Mark> child = nil;
    if (index < self.children.count) {
        child = self.children[index];
    }
    return child;
}

- (id<Mark>)lastChild {
    return self.children.lastObject;
}

- (NSUInteger)count {
    return self.children.count;
}


- (void)drawWithContext:(CGContextRef)context {
    assert([NSThread isMainThread]);
    CGContextMoveToPoint(context, self.location.x, self.location.y);
    for (id<Mark> mark in self.children) {
        [mark drawWithContext:context];
    }
    CGContextSetLineWidth(context, self.size);
    CGContextSetLineCap(context, kCGLineCapRound);
    CGContextSetStrokeColorWithColor(context, self.color.CGColor);
    CGContextStrokePath(context);
}

- (NSString *)description {
    NSMutableString *mutableString = [NSMutableString stringWithString:[super description]];
    [mutableString appendFormat:@"size:%f\n", self.size];
    [mutableString appendFormat:@"color:%@\n",self.color];
    [mutableString appendFormat:@"children:%@",self.children];
    return mutableString;
}

//1
//4
#pragma mark - Copying
- (instancetype)copyWithZone:(NSZone *)zone {
    Stroke *copy = [[[self class] allocWithZone:zone] init];
    copy.color = self.color.copy;
    copy.size = self.size;
    copy.children = self.children.copy;
    return copy;
}



#pragma mark - Enumerator
- (NSEnumerator *)enumerator {
    return [[MarkEnumerator alloc] initWithMark:self];
}

- (void)enumerateMarksUsingBlock:(void(^)(id<Mark> item, BOOL *stop))block {
    BOOL stop = NO;
    NSEnumerator *enumerator = [self enumerator];
    for (id<Mark> mark in enumerator) {
        block(mark, &stop);
        if (stop) {
            break;
        }
    }
}

- (void)accecptMarkVisitor:(id<MarkVisitor>)visitor {
    for (id<Mark> dot in self.children) {
        [dot accecptMarkVisitor:visitor];
    }
    [visitor visitStroke:self];
}
#pragma mark - Lazy property
- (UIColor *)color {
    if (_color == nil) {
        return [UIColor blueColor];
    }
    return _color;
}

- (CGFloat)size {
    return 3;
}

- (NSMutableArray<id<Mark>> *)children {
    if (_children == nil) {
        _children = [NSMutableArray array];
    }
    return _children;
}
@end
