//
//  CoordinatingController.m
//  Design Patterns With Objective-c Demo
//
//  Created by yubinqiang on 16/6/21.
//  Copyright © 2016年 Zeek. All rights reserved.
//

#import "CoordinatingController.h"

@implementation CoordinatingController
+ (CoordinatingController *)sharedCoordinatingController {
    static CoordinatingController *_coordinatingController = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _coordinatingController = [[CoordinatingController alloc] init];
    });
    return _coordinatingController;
}
@end
