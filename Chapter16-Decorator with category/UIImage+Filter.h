//
//  UIImage+Filter.h
//  Design Patterns With Objective-c Demo
//
//  Created by yubinqiang on 16/7/5.
//  Copyright © 2016年 Zeek. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (Filter)
- (CGContextRef)beginContext;
- (void)endContext;
- (UIImage *)imageFromCurrentImageContext;
@end
