//
//  NSMutableArray+Stack.h
//  Design Patterns With Objective-c Demo
//
//  Created by yubinqiang on 16/6/28.
//  Copyright © 2016年 Zeek. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSMutableArray (Stack)
- (id)pop;
- (void)push:(id)object;
@end
