//
//  CanvasView.m
//  Design Patterns With Objective-c Demo
//
//  Created by yubinqiang on 16/5/12.
//  Copyright © 2016年 Zeek. All rights reserved.
//

#import "CanvasView.h"

@implementation CanvasView
- (void)drawRect:(CGRect)rect {
    CGContextRef context = UIGraphicsGetCurrentContext();
    MarkRenderer *markRenderer = [[MarkRenderer alloc] initWithContext:context];
    [self.mark accecptMarkVisitor:markRenderer];
}
@end
