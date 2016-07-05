//
//  ViewController.m
//  Chapter16-Decorator
//
//  Created by yubinqiang on 16/7/4.
//  Copyright © 2016年 Zeek. All rights reserved.
//

#import "ViewController.h"
#import "DecoratorView.h"
#import "ImageComponent.h"
#import "ImageTransformFilter.h"
#import "ImageShadowFilter.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIImage *image = [UIImage imageNamed:@"cat.jpg"];
    CGAffineTransform rotateTransform = CGAffineTransformMakeRotation(-M_PI * 0.25F);
    CGAffineTransform translateTransform = CGAffineTransformMakeTranslation(-image.size.width * 0.05F, image.size.height * 0.0125F);
    CGAffineTransform finalTransform = CGAffineTransformConcat(rotateTransform, translateTransform);
    
    id<ImageComponent> transformedImage = [[ImageTransformFilter alloc] initWithImageComponent:image transform:finalTransform];
    id<ImageComponent> finalImgae = [[ImageShadowFilter alloc] initWithImageComponent:transformedImage];
    
    
    DecoratorView *decoratorView = [[DecoratorView alloc] initWithFrame:self.view.bounds];
    decoratorView.image = finalImgae;
    [self.view addSubview:decoratorView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
