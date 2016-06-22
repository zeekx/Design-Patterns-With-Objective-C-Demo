//
//  TouchConsoleController.m
//  Design Patterns With Objective-c Demo
//
//  Created by yubinqiang on 16/6/22.
//  Copyright © 2016年 Zeek. All rights reserved.
//

#import "TouchConsoleController.h"
#import "GameBoyEmulator.h"
#import "GameGearEmulator.h"

@implementation TouchConsoleController
- (instancetype)init {
    self = [super init];
    if (self) {
        [self setup];
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if (self) {
        [self setup];
    }
    return self;
}

- (void)setup {
    self.emualtor = [[GameGearEmulator alloc] init];
}

- (void)up {
    NSLog(@"%s",__PRETTY_FUNCTION__);
    [super setCommand:kConsoleCommandUp];
}

- (void)down {
    NSLog(@"%s",__PRETTY_FUNCTION__);
    [super setCommand:kConsoleCommandDown];
}
@end
