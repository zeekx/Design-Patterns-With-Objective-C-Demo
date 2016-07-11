//
//  Sandwich.h
//  Design Patterns With Objective-c Demo
//
//  Created by yubinqiang on 16/7/11.
//  Copyright © 2016年 Zeek. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Sandwich : NSObject
- (void)make;
- (void)prepareBread;
- (void)putBreadOnPlate;
- (void)addMeat;
- (void)addCondiments;
- (void)willServe;
- (void)serve;
@end
