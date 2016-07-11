//
//  NumbericInputValidator.m
//  Design Patterns With Objective-c Demo
//
//  Created by yubinqiang on 16/7/11.
//  Copyright © 2016年 Zeek. All rights reserved.
//

#import "NumbericInputValidator.h"
#import <UIKit/UITextField.h>

@implementation NumbericInputValidator
- (BOOL)validateInput:(UITextField *)input error:(NSError *__autoreleasing *)error {
    NSError *regError = nil;
    NSRegularExpression *regex = [NSRegularExpression regularExpressionWithPattern:@"^[0-9]*$"
                                                                           options:NSRegularExpressionAnchorsMatchLines
                                                                             error:&regError];
    NSUInteger numberOfMatches = [regex numberOfMatchesInString:input.text
                                                        options:NSMatchingAnchored
                                                          range:NSMakeRange(0, input.text.length)];
    if (numberOfMatches == 0) {
        if (error != nil) {
            NSString *description = NSLocalizedString(@"Input Validation Failed!", @"");
            NSString *reason = NSLocalizedString(@"The input can contain only numerical values", @"");
            
            NSArray *arrayForObj = @[description,reason];
            NSArray *arrayForKey = @[NSLocalizedDescriptionKey, NSLocalizedFailureReasonErrorKey];
            NSDictionary *userInfo = [NSDictionary dictionaryWithObjects:arrayForObj
                                                                 forKeys:arrayForKey];
            *error = [NSError errorWithDomain:@"Chapter19-Strategy" code:0 userInfo:userInfo];
        }
        return NO;
    }
    return YES;
}
@end
