//
//  Scribble.m
//  Design Patterns With Objective-c Demo
//
//  Created by yubinqiang on 16/6/23.
//  Copyright © 2016年 Zeek. All rights reserved.
//

#import "Scribble.h"
#import "Stroke.h"
#import "ScribbleMemento.h"
#import "ScribbleMemento+Friend.h"
#import "Mark.h"

static NSString *const kMark = @"mark";

@interface Scribble ()
@property (nonatomic, strong) id<Mark> mark;
@property (nonatomic, strong) id<Mark> incrementalMark;
@end

@implementation Scribble
- (instancetype)init {
    self = [super init];
    if (self) {
        self.mark = [[Stroke alloc] init];
    }
    return self;
}

- (void)addMark:(id<Mark>)mark shouldAddToPreviousMark:(BOOL)add {
    [self willChangeValueForKey:kMark];
    if (add) {
        [[self.mark lastChild] addMark:mark];
    } else {
        [self.mark addMark:mark];
        self.incrementalMark = mark;
    }
    [self didChangeValueForKey:kMark];
}

- (void)removeMark:(id<Mark>)aMark {
    if (aMark == self.mark) {
        return;
    } else {
        [self willChangeValueForKey:kMark];
        [self.mark removeMark:aMark];
        if (aMark == self.incrementalMark) {
            self.incrementalMark = nil;
        }
        [self didChangeValueForKey:kMark];
    }
}

- (NSString *)description {
    NSMutableString *mutableString = [NSMutableString stringWithString:[self.mark description]];
    return mutableString;
}

- (instancetype)initWithMemento:(ScribbleMemento *)memento {
    self = [super init];
    if ([memento isCompletedSnapshot]) {
        self.mark = memento.mark;
    } else {
        self.mark = [[Stroke alloc] init];
        [self attachStateFromMemento:memento];
    }
    return self;
}

+ (Scribble *)scribbleWithMemento:(ScribbleMemento *)memento {
    Scribble *scribble = [[Scribble alloc] initWithMemento:memento];
    return scribble;
}

- (ScribbleMemento *)scribbleMemento {
    return [self scribbleMementoWithCompleteSnapshot:YES];
}

- (ScribbleMemento *)scribbleMementoWithCompleteSnapshot:(BOOL)completeSnapshot {
    id<Mark> mementoMark = self.incrementalMark;
    if (completeSnapshot) {
        mementoMark = self.mark;
    } else if (mementoMark == nil) {
        return mementoMark;
    }
    ScribbleMemento *memento =[[ScribbleMemento alloc] initWithMark:mementoMark];
    memento.completedSnapshot = completeSnapshot;
    return  memento;
}

- (void)attachStateFromMemento:(ScribbleMemento *)memento {
    [self addMark:memento.mark shouldAddToPreviousMark:NO];
}

@end
