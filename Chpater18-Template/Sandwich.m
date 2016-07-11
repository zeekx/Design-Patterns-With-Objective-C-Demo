//
//  Sandwich.m
//  Design Patterns With Objective-c Demo
//
//  Created by yubinqiang on 16/7/11.
//  Copyright © 2016年 Zeek. All rights reserved.
//

#import "Sandwich.h"

@implementation Sandwich
- (void)make {
    NSLog(@"%s",__PRETTY_FUNCTION__);
    [self prepareBread];
    [self putBreadOnPlate];
    [self addMeat];
    [self addCondiments];
    [self willServe];
    [self serve];
}

- (void)prepareBread {
    assert(NO);
    [NSException raise:NSInternalInconsistencyException format:@"You must override %@ in a subclass!",NSStringFromSelector(_cmd)];
    
    //    [self doesNotRecognizeSelector:_cmd];
}

- (void)putBreadOnPlate {
    NSLog(@"\n%s",__PRETTY_FUNCTION__);
}

- (void)addMeat {
    [NSException raise:NSInternalInconsistencyException format:@"You must override %@ in a subclass!",NSStringFromSelector(_cmd)];
}

- (void)addCondiments {
    [NSException raise:NSInternalInconsistencyException format:@"You must override %@ in a subclass!",NSStringFromSelector(_cmd)];
}

- (void)willServe {
    NSLog(@"\n%s",__PRETTY_FUNCTION__);
}

- (void)serve {
    NSLog(@"\n%s",__PRETTY_FUNCTION__);
}
@end
