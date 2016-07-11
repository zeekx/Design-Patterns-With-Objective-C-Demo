//
//  InputValidator.h
//  Design Patterns With Objective-c Demo
//
//  Created by yubinqiang on 16/7/11.
//  Copyright © 2016年 Zeek. All rights reserved.
//

#import <Foundation/Foundation.h>

@class UITextField;
@interface InputValidator : NSObject
- (BOOL)validateInput:(UITextField *)input error:(NSError *__autoreleasing *)error;
@end
