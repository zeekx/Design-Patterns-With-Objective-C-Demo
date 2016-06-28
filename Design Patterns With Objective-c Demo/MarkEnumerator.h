//
//  MarkEnumerator.h
//  Design Patterns With Objective-c Demo
//
//  Created by yubinqiang on 16/6/28.
//  Copyright © 2016年 Zeek. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Mark.h"

@interface MarkEnumerator : NSEnumerator
- (instancetype)initWithMark:(id<Mark>)mark;
@property (readonly, copy) NSArray *allObjects;
- (id)nextObject;

- (void)traverAndBuildStackMark:(id<Mark>)mark;
@end
