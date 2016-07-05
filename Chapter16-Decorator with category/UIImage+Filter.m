//
//  UIImage+Filter.m
//  Design Patterns With Objective-c Demo
//
//  Created by yubinqiang on 16/7/5.
//  Copyright © 2016年 Zeek. All rights reserved.
//

#import "UIImage+Filter.h"

@implementation UIImage (Filter)
- (CGContextRef)beginContext {
    UIGraphicsBeginImageContextWithOptions(self.size, NO, 0);
    CGContextRef context = UIGraphicsGetCurrentContext();
    return context;
}

- (void)endContext {
    UIGraphicsEndImageContext();
}

- (UIImage *)imageFromCurrentImageContext {
    [self drawAtPoint:CGPointZero];
    return UIGraphicsGetImageFromCurrentImageContext();
}
@end
