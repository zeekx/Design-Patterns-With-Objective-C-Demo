//
//  Hamburger.m
//  Design Patterns With Objective-c Demo
//
//  Created by yubinqiang on 16/7/11.
//  Copyright © 2016年 Zeek. All rights reserved.
//

#import "Hamburger.h"

@implementation Hamburger
- (void)prepareBread {
    NSLog(@"%s",__PRETTY_FUNCTION__);
    [self getBurgerBun];
}

- (void)addMeat {
    NSLog(@"%s",__PRETTY_FUNCTION__);
    [self addBeefPatty];
}

- (void)addCondiments {
    NSLog(@"%s",__PRETTY_FUNCTION__);
    [self addKetchup];
    [self addMustard];
    [self addCheese];
    [self addPickles];
}

- (void)getBurgerBun {
    NSLog(@"%s",__PRETTY_FUNCTION__);
}

- (void)addKetchup {
    NSLog(@"%s",__PRETTY_FUNCTION__);
}

- (void)addMustard {
    NSLog(@"%s",__PRETTY_FUNCTION__);
}

- (void)addBeefPatty {
    NSLog(@"%s",__PRETTY_FUNCTION__);
}

- (void)addCheese {
    NSLog(@"%s",__PRETTY_FUNCTION__);
}

- (void)addPickles {
    NSLog(@"%s",__PRETTY_FUNCTION__);
}

@end
