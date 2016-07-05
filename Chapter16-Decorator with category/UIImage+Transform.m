//
//  UIImage+Transform.m
//  Design Patterns With Objective-c Demo
//
//  Created by yubinqiang on 16/7/5.
//  Copyright © 2016年 Zeek. All rights reserved.
//

#import "UIImage+Transform.h"
#import "UIImage+Filter.h"

@implementation UIImage (Transform)
- (UIImage *)imageWithTransform:(CGAffineTransform)transform {
    CGContextRef context = [self beginContext];
    CGContextConcatCTM(context, transform);
    UIImage *imageOut = [self imageFromCurrentImageContext];
    [self endContext];
    return imageOut;
}
@end
