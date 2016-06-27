//
//  SetStrokeColorCommand.h
//  Design Patterns With Objective-c Demo
//
//  Created by yubinqiang on 16/6/21.
//  Copyright © 2016年 Zeek. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIColor.h>
#import "Command.h"

typedef void (^RGBValuesProvider)(CGFloat *red, CGFloat *green, CGFloat *blue);

@interface SetStrokeColorCommand : Command
@property (nonatomic, copy  ) RGBValuesProvider rgbValuesProvider;
@end