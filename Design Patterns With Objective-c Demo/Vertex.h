//
//  Vertex.h
//  Design Patterns With Objective-c Demo
//
//  Created by yubinqiang on 16/5/9.
//  Copyright © 2016年 Zeek. All rights reserved.
//

#import "Mark.h"

@interface Vertex : NSObject <Mark,  NSCopying>
@property (nonatomic, assign) CGPoint location;
@property (nonatomic, strong) UIColor *color;
@property (nonatomic, assign) CGFloat size;

@property (nonatomic, readonly) NSUInteger count;
@property (nonatomic, readonly) id <Mark> lastChild;

- (instancetype)initWithLocation:(CGPoint)location;

- (void)addMark:(id<Mark>)mark;
- (void)removeMark:(id<Mark>)mark;
- (id<Mark>)childMarkAtIndex:(NSUInteger)index;
@end
