//
//  ImageFilter.h
//  Design Patterns With Objective-c Demo
//
//  Created by yubinqiang on 16/7/4.
//  Copyright © 2016年 Zeek. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ImageComponent.h"
#import "UIImage+Component.h"

@interface ImageFilter : NSObject <ImageComponent>
@property (strong, nonatomic) id<ImageComponent> component;

- (void)apply;
- (instancetype)initWithImageComponent:(id<ImageComponent>)component;
- (id)forwardingTargetForSelector:(SEL)aSelector;
@end
