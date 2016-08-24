//
//  FlowerView.m
//  Design Patterns With Objective-c Demo
//
//  Created by yubinqiang on 16/8/24.
//  Copyright © 2016年 Zeek. All rights reserved.
//

#import "FlowerView.h"

@implementation FlowerView
- (instancetype) initWithImage:(UIImage *)iamge {
    self =[ super initWithImage:iamge];
    if (self) {
        self.image = iamge;
    }
    return self;
}
@end


@implementation ExtrinsicFlowerState
@end