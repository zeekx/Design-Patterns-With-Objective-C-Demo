//
//  ViewController.m
//  Chapter16-Decorator with category
//
//  Created by yubinqiang on 16/7/5.
//  Copyright © 2016年 Zeek. All rights reserved.
//

#import "ViewController.h"
#import "UIImage+Transform.h"
#import "UIImage+Shadow.h"
#import "DecoratorView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIImage *image = [UIImage imageNamed:@"betterfly"];
    CGAffineTransform rotateTransform = CGAffineTransformMakeRotation(-M_PI * 0.25F);
    CGAffineTransform translateTransform = CGAffineTransformMakeTranslation(-image.size.width * 0.5F, image.size.height * 0.125F);
    CGAffineTransform finalTransform = CGAffineTransformConcat(rotateTransform, translateTransform);
    
    UIImage *transformedImage = [image imageWithTransform:finalTransform];
    UIImage *finalImgae = [transformedImage imageWithDropShadow];
    
    
    DecoratorView *decoratorView = [[DecoratorView alloc] initWithFrame:self.view.bounds];
    decoratorView.image = finalImgae;
    [self.view addSubview:decoratorView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
