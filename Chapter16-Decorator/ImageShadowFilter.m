//
//  ImageShadowFilter.m
//  Design Patterns With Objective-c Demo
//
//  Created by yubinqiang on 16/7/4.
//  Copyright © 2016年 Zeek. All rights reserved.
//

#import "ImageShadowFilter.h"

@implementation ImageShadowFilter
- (void)apply {
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGSize offset = CGSizeMake(-25, 15);
    CGContextSetShadow(context, offset, 20.0F);
}
@end
