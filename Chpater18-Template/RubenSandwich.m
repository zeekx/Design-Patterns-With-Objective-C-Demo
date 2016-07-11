//
//  RubenSandwich.m
//  Design Patterns With Objective-c Demo
//
//  Created by yubinqiang on 16/7/11.
//  Copyright © 2016年 Zeek. All rights reserved.
//

#import "RubenSandwich.h"

@implementation RubenSandwich
- (void)prepareBread {
    NSLog(@"\n%s",__PRETTY_FUNCTION__);
    [self cutRyeBread];
}

- (void)addMeat {
    NSLog(@"\n%s",__PRETTY_FUNCTION__);
    [self addCornBeef];
}

- (void)addCondiments {
    NSLog(@"\n%s",__PRETTY_FUNCTION__);
    [self addSauerKraut];
    [self addThousandIslandDressing];
    [self addSwissCheese];
}

- (void)cutRyeBread {
    NSLog(@"%s",__PRETTY_FUNCTION__);
}

- (void)addCornBeef {
    NSLog(@"%s",__PRETTY_FUNCTION__);
}

- (void)addSauerKraut {
    NSLog(@"%s",__PRETTY_FUNCTION__);
}

- (void)addThousandIslandDressing {
    NSLog(@"%s",__PRETTY_FUNCTION__);
}

- (void)addSwissCheese {
    NSLog(@"%s",__PRETTY_FUNCTION__);
}

- (void)grillIt {
    NSLog(@"%s",__PRETTY_FUNCTION__);
}

- (void)willServe {
    NSLog(@"\n%s",__PRETTY_FUNCTION__);
    [self grillIt];
}
@end
