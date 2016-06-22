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
    CGFloat alphaValue = 1.0F;
    
    if (self.rgbValuesProvider != NULL) {
        self.rgbValuesProvider(&redValue, &greenValue, &blueValue);
    }
    UIColor *color = [UIColor colorWithRed:redValue green:greenValue blue:blueValue alpha:alphaValue];
    [CoordinatingController sharedCoordinatingController].canvasViewController.strokeColor = color;
}
@end
