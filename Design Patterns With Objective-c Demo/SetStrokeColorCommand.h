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

@protocol SetStrokeColorCommandDelegate;
typedef void(^RGBAValuesProvider)(CGFloat *red, CGFloat *green, CGFloat *blue, CGFloat *alpha);

@interface SetStrokeColorCommand : Command
@property (nonatomic, weak  ) id<SetStrokeColorCommandDelegate> delegate;
@property (nonatomic, copy  ) RGBAValuesProvider rgbaValuesProvider;
@end





@protocol SetStrokeColorCommandDelegate <NSObject>
@required
- (void)command:(SetStrokeColorCommand *)command didRequestColorComponentrsForRed:(CGFloat *)red green:(CGFloat *)green blue:(CGFloat *)blue;
- (void)command:(SetStrokeColorCommand *)command didFinishColorUpdateWithColor:(UIColor *)color;
@end