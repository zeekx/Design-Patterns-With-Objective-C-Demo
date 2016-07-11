//
//  CustomTextField.h
//  Design Patterns With Objective-c Demo
//
//  Created by yubinqiang on 16/7/11.
//  Copyright © 2016年 Zeek. All rights reserved.
//

#import <UIKit/UIKit.h>

@class InputValidator;

@interface CustomTextField : UITextField
@property (strong, nonatomic) InputValidator *inputValidator;
- (BOOL)validate:(NSError *__autoreleasing *)error;
@end
