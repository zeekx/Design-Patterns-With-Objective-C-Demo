//
//  ConsoleEmulator.h
//  Design Patterns With Objective-c Demo
//
//  Created by yubinqiang on 16/6/22.
//  Copyright © 2016年 Zeek. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef NS_ENUM(NSInteger, ConsoleCommand) {
    kConsoleCommandUp,
    kConsoleCommandDown,
    kConsoleCommandLeft,
    kConsoleCommandRight
};

@interface ConsoleEmulator : UIViewController
- (void)loadInstructionsForCommand:(ConsoleCommand)command;
- (void)executeInstructions;
@end
