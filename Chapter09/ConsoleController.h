//
//  ConsoleController.h
//  Design Patterns With Objective-c Demo
//
//  Created by yubinqiang on 16/6/22.
//  Copyright © 2016年 Zeek. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ConsoleEmulator.h"

@protocol ConsoleController <NSObject>
@required
- (void)up;
- (void)down;
@property (strong, nonatomic) ConsoleEmulator *emualtor;
@end

@interface ConsoleController : UIViewController <ConsoleController>

- (void)setCommand:(ConsoleCommand)commnad;

@end


