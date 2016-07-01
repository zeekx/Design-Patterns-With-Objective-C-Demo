//
//  MarkRenderer.h
//  Design Patterns With Objective-c Demo
//
//  Created by yubinqiang on 16/7/1.
//  Copyright © 2016年 Zeek. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MarkVisitor.h"
#import <CoreGraphics/CoreGraphics.h>


@interface MarkRenderer : NSObject <MarkVisitor>
@property (assign, nonatomic,getter=shouldMoveContextToDot) BOOL moveContextToDot;
@property (assign, nonatomic) CGContextRef context;

- (instancetype)initWithContext:(CGContextRef)context;

- (void)visitMark:(id<Mark>)mark;
- (void)visitDot:(Dot *)dot;
- (void)visitVertex:(Vertex *)vertex;
- (void)visitStroke:(Stroke *)Stroke;

@end
