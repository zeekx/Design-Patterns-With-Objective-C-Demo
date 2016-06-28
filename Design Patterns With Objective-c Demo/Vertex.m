//
//  Vertex.m
//  Design Patterns With Objective-c Demo
//
//  Created by yubinqiang on 16/5/9.
//  Copyright © 2016年 Zeek. All rights reserved.
//

#import "Vertex.h"

@implementation Vertex

- (instancetype)initWithLocation:(CGPoint)location {
    self = [super init];
    if (self) {
        self.location = location;
    }
    return self;
}


- (void)addMark:(id<Mark>)mark {
}
- (void)removeMark:(id<Mark>)mark {
}

- (id<Mark>)childMarkAtIndex:(NSUInteger)index {
    return nil;
}

- (void)drawWithContext:(CGContextRef)context {
    CGContextAddLineToPoint(context, self.location.x, self.location.y);
}

#pragma mark - Copying
- (instancetype)copyWithZone:(NSZone *)zone {
    return [[[self class] allocWithZone:zone] initWithLocation:self.location];
}

- (NSString *)description {
    NSMutableString *mutableString = [NSMutableString stringWithString:[super description]];
    [mutableString appendFormat:@"location:%@\n",NSStringFromCGPoint(self.location)];
    return mutableString;
}
@end
