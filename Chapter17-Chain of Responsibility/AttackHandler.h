//
//  AttackHandler.h
//  Design Patterns With Objective-c Demo
//
//  Created by yubinqiang on 16/7/5.
//  Copyright © 2016年 Zeek. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Attack.h"

@interface AttackHandler : NSObject
@property (strong, nonatomic) AttackHandler *nextAttrackHandler;

- (void)handleAttack:(Attack *)attack;
@end
