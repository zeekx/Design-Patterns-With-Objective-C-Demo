//
//  CustomTextField.m
//  Design Patterns With Objective-c Demo
//
//  Created by yubinqiang on 16/7/11.
//  Copyright © 2016年 Zeek. All rights reserved.
//

#import "CustomTextField.h"
#import "InputValidator.h"

@interface CustomTextField ()

@end

@implementation CustomTextField
- (BOOL)validate:(NSError *__autoreleasing *)error {
    NSError *validateError = nil;
    BOOL validationResult = [self.inputValidator validateInput:self error:&validateError];
    if (!validationResult && error) {
        *error = validateError;
    }
    return validationResult;
}
@end
