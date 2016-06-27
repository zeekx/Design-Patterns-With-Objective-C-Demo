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

- (void)viewDidLoad {
    [super viewDidLoad];
    //1. Set value of slider
    //2. Set slider.command.rgbValuesProvider
    SetStrokeColorCommand *colorCommand;
    colorCommand.rgbValuesProvider = ^(CGFloat *red, CGFloat *green, CGFloat *blue){
        *red = self.redSlider.value;
        *green = self.greenSlider.value;
        *blue = self.blueSlider.value;
    };
    self.title = @"Palette";
    [self.navigationController setNavigationBarHidden:NO];
    self.navigationController.toolbarHidden = YES;
}

- (IBAction)onCommandSliderValueChanged:(CommandSlider *)sender {
    [sender.command execute];
}
@end
