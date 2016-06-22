//
//  CommandSlider.h
//  Design Patterns With Objective-c Demo
//
//  Created by yubinqiang on 16/6/21.
//  Copyright © 2016年 Zeek. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Command.h"

@interface CommandSlider : UISlider
@property (nonatomic, weak) Command *command;
@end
