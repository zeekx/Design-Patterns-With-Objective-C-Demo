//
//  ImageTransformFilter.m
//  Design Patterns With Objective-c Demo
//
//  Created by yubinqiang on 16/7/4.
//  Copyright © 2016年 Zeek. All rights reserved.
//

#import "ImageTransformFilter.h"

@implementation ImageTransformFilter
- (instancetype)initWithImageComponent:(id<ImageComponent>)component transform:(CGAffineTransform)transform {
    self = [super initWithImageComponent:component];
    if (self) {
        self.transform = transform;
    }
    return self;
}

- (void)apply {
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextConcatCTM(context, self.transform);
}
@end
