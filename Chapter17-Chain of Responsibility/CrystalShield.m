//
//  CrystalShield.m
//  Design Patterns With Objective-c Demo
//
//  Created by yubinqiang on 16/7/5.
//  Copyright © 2016年 Zeek. All rights reserved.
//

#import "CrystalShield.h"
#import "MagicFireAttack.h"

@implementation CrystalShield
- (void)handleAttack:(Attack *)attack {
    NSLog(@"%s",__PRETTY_FUNCTION__);
    if ([attack isKindOfClass:MagicFireAttack.class]) {
        NSLog(@"No damage from a %@.",NSStringFromClass(attack.class));
    } else {
        NSLog(@"I don't know this attack:%@",attack.class);
        [super handleAttack:attack];
    }
}
@end
