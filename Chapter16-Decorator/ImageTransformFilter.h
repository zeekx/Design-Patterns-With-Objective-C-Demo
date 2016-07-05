//
//  ImageTransformFilter.h
//  Design Patterns With Objective-c Demo
//
//  Created by yubinqiang on 16/7/4.
//  Copyright © 2016年 Zeek. All rights reserved.
//

#import "ImageFilter.h"

@interface ImageTransformFilter : ImageFilter
@property (assign, nonatomic) CGAffineTransform transform;
- (instancetype)initWithImageComponent:(id<ImageComponent>)component transform:(CGAffineTransform)transform;
- (void)apply;
@end
