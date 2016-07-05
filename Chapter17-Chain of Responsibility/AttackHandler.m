//
//  AttackHandler.m
//  Design Patterns With Objective-c Demo
//
//  Created by yubinqiang on 16/7/5.
//  Copyright © 2016年 Zeek. All rights reserved.
//

#import "AttackHandler.h"

@implementation AttackHandler
- (void)handleAttack:(Attack *)attack {
    NSLog(@"%s",__PRETTY_FUNCTION__);
    [self.nextAttrackHandler handleAttack:attack];
}
@end
