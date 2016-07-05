//
//  ImageFilter.m
//  Design Patterns With Objective-c Demo
//
//  Created by yubinqiang on 16/7/4.
//  Copyright © 2016年 Zeek. All rights reserved.
//

#import "ImageFilter.h"

@implementation ImageFilter
- (instancetype)initWithImageComponent:(id<ImageComponent>)component {
    self = [super init];
    if (self) {
        self.component = component;
    }
    return self;
}

- (void)apply {
    
}

- (id)forwardingTargetForSelector:(SEL)aSelector {
    if ([NSStringFromSelector(aSelector) hasPrefix:@"draw"]) {
        [self apply];
    }
    return self.component;
}
@end
