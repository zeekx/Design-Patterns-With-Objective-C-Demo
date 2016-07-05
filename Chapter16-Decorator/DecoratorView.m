//
//  DecoratorView.m
//  Design Patterns With Objective-c Demo
//
//  Created by yubinqiang on 16/7/4.
//  Copyright © 2016年 Zeek. All rights reserved.
//

#import "DecoratorView.h"

@implementation DecoratorView
- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor clearColor];
    }
    return self;
}

- (void)drawRect:(CGRect)rect {
//    UIImage *image = [UIImage imageNamed:@"cat.jpg"];
//    [image drawInRect:rect];
    assert(self.image);
    [self.image drawInRect:rect];
}
@end
