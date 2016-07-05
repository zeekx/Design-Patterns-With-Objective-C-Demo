//
//  UIImage+Shadow.m
//  Design Patterns With Objective-c Demo
//
//  Created by yubinqiang on 16/7/5.
//  Copyright © 2016年 Zeek. All rights reserved.
//

#import "UIImage+Shadow.h"

@implementation UIImage (Shadow)
- (UIImage *)imageWithDropShadow {
    CGContextRef context = [self beginContext];
    CGSize offset = CGSizeMake(-25, 15);
    CGContextSetShadow(context, offset, 20.0);
    UIImage *imageOut = [self imageFromCurrentImageContext];
    [self endContext];
    return imageOut;
}

@end
