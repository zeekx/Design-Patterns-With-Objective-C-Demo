//
//  FlyweightView.h
//  Design Patterns With Objective-c Demo
//
//  Created by yubinqiang on 16/8/24.
//  Copyright © 2016年 Zeek. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ExtrinsicFlowerState;
@interface FlyweightView : UIView
@property (strong, nonatomic) NSArray<ExtrinsicFlowerState *> *flowerList;
@end
