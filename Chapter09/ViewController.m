//
//  ViewController.m
//  Chapter09
//
//  Created by yubinqiang on 16/6/22.
//  Copyright © 2016年 Zeek. All rights reserved.
//

#import "ViewController.h"
#import "TouchConsoleController.h"

@interface ViewController ()
@property (strong, nonatomic) ConsoleController *console;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.console = [TouchConsoleController new];
    [self.console up];
    [self.console down];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
