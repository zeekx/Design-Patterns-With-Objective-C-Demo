//
//  ViewController.m
//  Chapter21-Flyweight
//
//  Created by yubinqiang on 16/8/24.
//  Copyright © 2016年 Zeek. All rights reserved.
//

#import "ViewController.h"
#import "FlowerFactory.h"
#import "FlyweightView.h"
#import "FlowerView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    const NSUInteger count = 1000;
    
    FlyweightView *view = (FlyweightView *)self.view;
    
    FlowerFactory *factory = [[FlowerFactory alloc] init];
    NSMutableArray<ExtrinsicFlowerState *> *flowerList = [NSMutableArray arrayWithCapacity:count];
    
    CGFloat minSize = 6, maxSize =48;
    for ( NSInteger i = 0; i < count; i++) {
        FlowerType type = arc4random() % FlowerTotalNumberOfFlowerTypes;
        UIView *flowerView = [factory flowerViewWithType:type];
        CGRect bounds = self.view.bounds;
        CGPoint original = CGPointMake(arc4random() % (NSInteger)CGRectGetWidth(bounds), arc4random() % (NSInteger)CGRectGetHeight(bounds));
        CGFloat size = (arc4random()%(NSInteger)(maxSize-minSize+1)) + minSize;
        
        
        ExtrinsicFlowerState *extrinsicFlowerState = [[ExtrinsicFlowerState alloc] init];
        extrinsicFlowerState.flowerView = flowerView;
        extrinsicFlowerState.area = CGRectMake(original.x, original.y, size, size);
        [flowerList addObject:extrinsicFlowerState];
        NSLog(@"frame:%@",NSStringFromCGRect(extrinsicFlowerState.area));
    }
    view.flowerList = flowerList;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
