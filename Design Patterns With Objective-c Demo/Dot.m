//
//  Dot.m
//  Design Patterns With Objective-c Demo
//
//  Created by yubinqiang on 16/5/10.
//  Copyright © 2016年 Zeek. All rights reserved.
//

#import "Dot.h"
@interface Dot () {
    UIColor *_color;
    CGFloat _size;
}
@end


@implementation Dot
@synthesize color = _color;
@synthesize size = _size;

- (id)copyWithZone:(NSZone *)zone {
    Dot *dotCopy = [[[self class] allocWithZone:zone] initWithLocation:self.location];
    dotCopy.color = self.color.copy;
    dotCopy.size = self.size;
    return dotCopy;
}

- (void)drawWithContext:(CGContextRef)context {
    CGContextSetFillColorWithColor(context, self.color.CGColor);
    CGContextFillEllipseInRect(context, CGRectMake(self.location.x, self.location.y, self.size, self.size));
}

- (NSString *)description {
    NSMutableString *mutableString = [NSMutableString stringWithString:[super description]];
    [mutableString appendFormat:@"size:%f\n", self.size];
    [mutableString appendFormat:@"color:%@\n",self.color];
    return mutableString;
}

- (void)accecptMarkVisitor:(id<MarkVisitor>)visitor {
    [visitor visitDot:self];
}

#pragma mark - Coding
- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    self = [self initWithCoder:aDecoder];
    if (self) {
        self.color = [aDecoder decodeObjectForKey:@"Dot.Color"];
        self.size = [aDecoder decodeFloatForKey:@"Dot.size"];
    }
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder {
    [super encodeWithCoder:aCoder];
    [aCoder encodeObject:self.color forKey:@"Dot.Color"];
    [aCoder encodeFloat:self.size forKey:@"Dot.size"];
}
@end
