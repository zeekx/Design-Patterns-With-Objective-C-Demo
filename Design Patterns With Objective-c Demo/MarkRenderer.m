//
//  MarkRenderer.m
//  Design Patterns With Objective-c Demo
//
//  Created by yubinqiang on 16/7/1.
//  Copyright © 2016年 Zeek. All rights reserved.
//

#import "MarkRenderer.h"
#import "Mark.h"
#import "Dot.h"
#import "Vertex.h"
#import "Stroke.h"



@implementation MarkRenderer
- (instancetype)initWithContext:(CGContextRef)context {
    self = [super init];
    if (self) {
        self.context = context;
        self.moveContextToDot = YES;
    }
    return self;
}

- (void)visitMark:(id<Mark>)mark {
    
}

- (void)visitDot:(Dot *)dot {
    CGRect frame = CGRectMake(dot.location.x - dot.size *.5, dot.location.y - dot.size *.5, dot.size, dot.size);
    CGContextFillEllipseInRect(self.context, frame);
}

- (void)visitVertex:(Vertex *)vertex {
    if (self.shouldMoveContextToDot) {
        CGContextMoveToPoint(self.context, vertex.location.x, vertex.location.y);
        self.moveContextToDot = NO;
    } else {
        CGContextAddLineToPoint(self.context, vertex.location.x, vertex.location.y);
    }
}

- (void)visitStroke:(Stroke *)stroke {
    CGContextSetStrokeColorWithColor(self.context, stroke.color.CGColor);
    CGContextSetLineWidth(self.context, stroke.size);
    CGContextSetLineCap(self.context, kCGLineCapRound);
    CGContextStrokePath(self.context);
    self.moveContextToDot = YES;
}
@end
