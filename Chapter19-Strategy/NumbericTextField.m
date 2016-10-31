//
//  NumbericTextField.m
//  Design Patterns With Objective-c Demo
//
//  Created by yubinqiang on 16/10/31.
//  Copyright © 2016年 Zeek. All rights reserved.
//

#import "NumbericTextField.h"
#import "NumbericInputValidator.h"

@implementation NumbericTextField
- (instancetype)init {
    self = [super init];
    if (self) {
        [self commonInit];
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if (self) {
        [self commonInit];
    }
    return self;
}

- (void)commonInit {
    self.inputValidator = [[NumbericInputValidator alloc] init];
}

@end
