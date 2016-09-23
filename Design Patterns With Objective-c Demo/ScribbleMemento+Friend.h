//
//  ScribbleMemento+Friend.h
//  Design Patterns With Objective-c Demo
//
//  Created by yubinqiang on 16/7/15.
//  Copyright © 2016年 Zeek. All rights reserved.
//

#import "ScribbleMemento.h"

@protocol Mark;

@interface ScribbleMemento (Friend)
@property (assign, nonatomic,getter=isCompleteSnapshot) BOOL completedSnapshot;
@property (copy  , nonatomic) id<Mark> mark;
- (instancetype)initWithMark:(id<Mark>) mark;
@end
