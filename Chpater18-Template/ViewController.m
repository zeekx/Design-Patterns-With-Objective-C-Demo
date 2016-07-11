//
//  ViewController.m
//  Chpater18-Template
//
//  Created by yubinqiang on 16/7/11.
//  Copyright © 2016年 Zeek. All rights reserved.
//

#import "ViewController.h"
#import "Sandwich.h"
#import "RubenSandwich.h"
#import "Hamburger.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    Sandwich *rubenSandwich = [[RubenSandwich alloc] init];
    [rubenSandwich make];
    
    Sandwich *hamburger = [[Hamburger alloc] init];
    [hamburger make];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
