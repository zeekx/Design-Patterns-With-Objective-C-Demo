//
//  MetalArmor.m
//  Design Patterns With Objective-c Demo
//
//  Created by yubinqiang on 16/7/5.
//  Copyright © 2016年 Zeek. All rights reserved.
//

#import "MetalArmor.h"
#import "SwordAttack.h"
@implementation MetalArmor
- (void)handleAttack:(Attack *)attack {
    NSLog(@"%s",__PRETTY_FUNCTION__);
    if ([attack isKindOfClass:SwordAttack.class]) {
        NSLog(@"No damage from a %@.",NSStringFromClass(SwordAttack.class));
    } else {
        NSLog(@"I don't know this attack:%@",attack.class);
        [super handleAttack:attack];
    }
}
@end
