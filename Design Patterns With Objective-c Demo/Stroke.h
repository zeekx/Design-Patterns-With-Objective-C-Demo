//
//  Stroke.h
//  Design Patterns With Objective-c Demo
//
//  Created by yubinqiang on 16/5/10.
//  Copyright © 2016年 Zeek. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Mark.h"

@interface Stroke : NSObject <Mark, NSCopying>
@property (assign, nonatomic) CGFloat size;
@property (strong, nonatomic) UIColor *color;

- (void)enumerateMarksUsingBlock:(void(^)(id<Mark> item, BOOL *stop))block;
@end
