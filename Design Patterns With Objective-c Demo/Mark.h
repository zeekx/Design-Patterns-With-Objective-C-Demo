//
//  Mark.h
//  Design Patterns With Objective-c Demo
//
//  Created by yubinqiang on 16/5/6.
//  Copyright © 2016年 Zeek. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol Mark <NSObject>
@property (nonatomic, strong) UIColor *color;
@property (nonatomic, assign) CGSize size;
@property (nonatomic, assign) CGPoint location;
@property (nonatomic, readonly) NSUInteger count;
@property (nonatomic, readonly) id <Mark> lastChild;

- (id)copy;
- (void)addMark:(id<Mark>)mark;
- (void)removeMark:(id<Mark>)mark;
- (id<Mark>)childMarkAtIndex:(NSUInteger)index;
@end
