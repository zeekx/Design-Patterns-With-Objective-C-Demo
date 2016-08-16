//
//  ScribbleMemento.h
//  Design Patterns With Objective-c Demo
//
//  Created by yubinqiang on 16/6/23.
//  Copyright © 2016年 Zeek. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ScribbleMemento : NSObject
@property (strong, readonly, nonatomic) NSData *data;
+ (ScribbleMemento *)mementoWithData:(NSData *)data;
@end
