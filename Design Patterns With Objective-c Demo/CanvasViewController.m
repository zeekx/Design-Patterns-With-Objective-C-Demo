//
//  CanvasViewController.m
//  Design Patterns With Objective-c Demo
//
//  Created by yubinqiang on 16/5/12.
//  Copyright © 2016年 Zeek. All rights reserved.
//

#import "CanvasViewController.h"
#import "CanvasView.h"
#import "CanvasViewGenerator.h"

@interface CanvasViewController ()
@property (strong, nonatomic) CanvasView *canvasView;
@end

@implementation CanvasViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self loadCanvasViewWithGenerator:[[CanvasViewGenerator alloc] init]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)loadCanvasViewWithGenerator:(CanvasViewGenerator *)generator {
    [self.canvasView removeFromSuperview];
    self.canvasView = [generator canvasViewWithFrame:self.view.bounds];
    [self.view addSubview:self.canvasView];
}

@end
