//
//  Avatar.m
//  Design Patterns With Objective-c Demo
//
//  Created by yubinqiang on 16/7/5.
//  Copyright © 2016年 Zeek. All rights reserved.
//

#import "Avatar.h"

@implementation Avatar
- (void)handleAttack:(Attack *)attack {
    NSLog(@"%s\n",__PRETTY_FUNCTION__);
    NSLog(@"Oh,Shit! I'm hit with a %@.",attack.class);
}
@end
