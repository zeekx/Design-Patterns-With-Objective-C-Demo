//
//  FlowerFactory.m
//  Design Patterns With Objective-c Demo
//
//  Created by yubinqiang on 16/8/24.
//  Copyright © 2016年 Zeek. All rights reserved.
//

#import "FlowerFactory.h"
#import "FlowerView.h"

@interface FlowerFactory ()
@property (strong, nonatomic) NSMutableDictionary<NSNumber*, UIView *> *flowerPool;
@end
@implementation FlowerFactory
- (UIView *)flowerViewWithType:(FlowerType)type {
    UIView *flowerView = [self.flowerPool objectForKey:@(type)];
    if (flowerView == nil) {
        NSArray<NSString *> *imageNames = @[@"anemone.png", @"cosmos.png", @"gerberas.png", @"hollyhock.png", @"jasmine.png", @"zinnia.png"];
        NSArray<NSNumber *> *types = @[    @(FlowerAnemoneType),
                                           @(FlowerCosmosType),
                                           @(FlowerGerberasType),
                                           @(FlowerHollyhockType),
                                           @(FlowerJasmineType),
                                           @(FlowerZinniaType)];
        flowerView = [[FlowerView alloc] initWithImage:[UIImage imageNamed:imageNames[type]]];
        [self.flowerPool setValue:flowerView forKey:types[type]];
    }
    return flowerView;
}

- (NSMutableDictionary<NSNumber*, UIView *> *)flowerPool {
    if (_flowerPool == nil) {
        _flowerPool = [NSMutableDictionary dictionaryWithCapacity:FlowerTotalNumberOfFlowerTypes];
    }
    return _flowerPool;
}
@end
