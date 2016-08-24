//
//  FlowerFactory.h
//  Design Patterns With Objective-c Demo
//
//  Created by yubinqiang on 16/8/24.
//  Copyright © 2016年 Zeek. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, FlowerType) {
    FlowerAnemoneType,
    FlowerCosmosType,
    FlowerGerberasType,
    FlowerHollyhockType,
    FlowerJasmineType,
    FlowerZinniaType,
    FlowerTotalNumberOfFlowerTypes
};


@class UIView;
@interface FlowerFactory : NSObject
- (UIView *)flowerViewWithType:(FlowerType)type;
@end
