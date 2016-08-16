//
//  Scribble.h
//  Design Patterns With Objective-c Demo
//
//  Created by yubinqiang on 16/6/23.
//  Copyright © 2016年 Zeek. All rights reserved.
//

#import <Foundation/Foundation.h>

@class ScribbleMemento;
@protocol Mark;

@interface Scribble : NSObject
@property (strong, nonatomic) ScribbleMemento *memento;
- (void)addMark:(id<Mark>)aMark shouldAddToPreviousMark:(BOOL)add;
- (void)removeMark:(id<Mark>)aMark;

- (instancetype)initWithMemento:(ScribbleMemento *)memento;
+ (Scribble *)scribbleWithMemento:(ScribbleMemento *)memento;
- (ScribbleMemento *)scribbleMemento;
- (ScribbleMemento *)scribbleMementoWithCompleteSnapshot:(BOOL)completeSnapshot;
- (void)attachStateFromMemento:(ScribbleMemento *)memento;
@end
