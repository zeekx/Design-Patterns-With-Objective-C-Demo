//
//  InputValidator.m
//  Design Patterns With Objective-c Demo
//
//  Created by yubinqiang on 16/7/11.
//  Copyright © 2016年 Zeek. All rights reserved.
//

#import "InputValidator.h"

@implementation InputValidator
- (BOOL)validateInput:(UITextField *)input error:(NSError **)error {
    if (error) {
        *error = nil;
    }
    return NO;
}
@end
