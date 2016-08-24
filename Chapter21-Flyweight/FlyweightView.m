//
//  FlyweightView.m
//  Design Patterns With Objective-c Demo
//
//  Created by yubinqiang on 16/8/24.
//  Copyright © 2016年 Zeek. All rights reserved.
//

#import "FlyweightView.h"
#import "FlowerView.h"

@implementation FlyweightView


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {

    for (ExtrinsicFlowerState *state in self.flowerList) {
        state.flowerView.frame = state.area;
        [((FlowerView *)state.flowerView).image drawInRect:state.area];
    }
}

@end
