//
//  ConsoleController.m
//  Design Patterns With Objective-c Demo
//
//  Created by yubinqiang on 16/6/22.
//  Copyright © 2016年 Zeek. All rights reserved.
//

#import "ConsoleController.h"

@interface ConsoleController()

@end

@implementation ConsoleController

@synthesize emualtor = _emualtor;

- (void)setCommand:(ConsoleCommand)commnad {
    NSLog(@"%s",__PRETTY_FUNCTION__);
    [self.emualtor loadInstructionsForCommand:commnad];
    [self.emualtor executeInstructions];
}

- (void)up {
    assert(NO);
}

- (void)down {
    assert(NO);
}
@end
