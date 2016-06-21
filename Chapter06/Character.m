//
//  Character.m
//  Design Patterns With Objective-c Demo
//
//  Created by yubinqiang on 16/6/20.
//  Copyright © 2016年 Zeek. All rights reserved.
//

#import "Character.h"

@implementation Character
- (instancetype)init {
    self = [super init];
    if (self) {
        self.protection = 1.0;
        self.power = 1.0;
        self.strength = 1.0;
        self.stamina = 1.0;
        self.intelligence = 1.0;
        self.agility = 1.0;
        self.aggressiveness = 1.0F;
    }
    return self;
}
@end
