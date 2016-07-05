//
//  MetalArmor.h
//  Design Patterns With Objective-c Demo
//
//  Created by yubinqiang on 16/7/5.
//  Copyright © 2016年 Zeek. All rights reserved.
//

#import <CoreFoundation/CoreFoundation.h>
#import "AttackHandler.h"

@class Attack;

@interface MetalArmor : AttackHandler
- (void)handleAttack:(Attack *)attack;
@end
