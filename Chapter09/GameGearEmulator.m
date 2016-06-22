//
//  GameGearEmulator.m
//  Design Patterns With Objective-c Demo
//
//  Created by yubinqiang on 16/6/22.
//  Copyright © 2016年 Zeek. All rights reserved.
//

#import "GameGearEmulator.h"

@implementation GameGearEmulator
- (void)loadInstructionsForCommand:(ConsoleCommand)command {
    NSLog(@"%s ->%ld",__PRETTY_FUNCTION__,(long)command);
}
- (void)executeInstructions {
    NSLog(@"%s",__PRETTY_FUNCTION__);
}
@end
