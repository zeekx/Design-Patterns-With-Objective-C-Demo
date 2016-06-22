//
//  PaletteViewController.m
//  Design Patterns With Objective-c Demo
//
//  Created by yubinqiang on 16/6/21.
//  Copyright © 2016年 Zeek. All rights reserved.
//

#import "PaletteViewController.h"
#import "CommandSlider.h"

@interface PaletteViewController ()
@property (weak, nonatomic) IBOutlet CommandSlider *redSlider;
@property (weak, nonatomic) IBOutlet CommandSlider *greenSlider;
@property (weak, nonatomic) IBOutlet CommandSlider *blueSlider;
@end

@implementation PaletteViewController
- (IBAction)onCommandSliderValueChanged:(CommandSlider *)sender {
    [sender.command execute];
}

#pragma mark - Set stroke color command delegate
- (void)command:(SetStrokeColorCommand *)command didFinishColorUpdateWithColor:(UIColor *)color {
    
}


- (void)command:(SetStrokeColorCommand *)command didRequestColorComponentrsForRed:(CGFloat *)red green:(CGFloat *)green blue:(CGFloat *)blue {
    
}
@end
