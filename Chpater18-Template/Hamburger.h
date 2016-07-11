//
//  Hamburger.h
//  Design Patterns With Objective-c Demo
//
//  Created by yubinqiang on 16/7/11.
//  Copyright © 2016年 Zeek. All rights reserved.
//

#import "Sandwich.h"

@interface Hamburger : Sandwich
- (void)prepareBread;
- (void)addMeat;
- (void)addCondiments;

- (void)getBurgerBun;
- (void)addKetchup;
- (void)addMustard;
- (void)addBeefPatty;
- (void)addCheese;
- (void)addPickles;
@end
