//
//  SetStrokeColorCommand.m
//  Design Patterns With Objective-c Demo
//
//  Created by yubinqiang on 16/6/21.
//  Copyright © 2016年 Zeek. All rights reserved.
//

#import "SetStrokeColorCommand.h"
#import "CanvasViewController.h"
#import "CoordinatingController.h"

@implementation SetStrokeColorCommand
- (void)execute {
    CGFloat redValue = 0;
    CGFloat greenValue = 0.0F;
    CGFloat blueValue = 0.0F;
    if ([self.delegate respondsToSelector:@selector(command:didRequestColorComponentrsForRed:green:blue:)]) {
        [self.delegate command:self didRequestColorComponentrsForRed:&redValue green:&greenValue blue:&blueValue];
    }
    
    
    UIColor *color = [UIColor colorWithRed:redValue green:greenValue blue:blueValue alpha:1.0F];
    [CoordinatingController sharedCoordinatingController].canvasViewController.strokeColor = color;
    if ([self.delegate respondsToSelector:@selector(command:didFinishColorUpdateWithColor:)]) {
        [self.delegate command:self didFinishColorUpdateWithColor:color];
    }
}
@end
