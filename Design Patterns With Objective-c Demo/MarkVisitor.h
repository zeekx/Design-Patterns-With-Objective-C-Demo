//
//  MarkVisitor.h
//  Design Patterns With Objective-c Demo
//
//  Created by yubinqiang on 16/7/1.
//  Copyright © 2016年 Zeek. All rights reserved.
//

#import <Foundation/Foundation.h>
@protocol Mark;
@class Dot, Vertex, Stroke;

@protocol MarkVisitor <NSObject>
- (void)visitMark:(id<Mark>)mark;
- (void)visitDot:(Dot *)dot;
- (void)visitVertex:(Vertex *)vertex;
- (void)visitStroke:(Stroke *)stroke;
@end
