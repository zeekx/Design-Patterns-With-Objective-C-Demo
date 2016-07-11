//
//  RubenSandwich.h
//  Design Patterns With Objective-c Demo
//
//  Created by yubinqiang on 16/7/11.
//  Copyright © 2016年 Zeek. All rights reserved.
//

#import "Sandwich.h"

@interface RubenSandwich : Sandwich
- (void)prepareBread;
- (void)addMeat;
- (void)addCondiments;
- (void)willServe;

- (void)cutRyeBread;
- (void)addCornBeef;
- (void)addSauerKraut;
- (void)addThousandIslandDressing;
- (void)addSwissCheese;
- (void)grillIt;
@end
