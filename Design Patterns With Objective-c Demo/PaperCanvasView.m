//
//  PaperCanvasView.m
//  Design Patterns With Objective-c Demo
//
//  Created by yubinqiang on 16/5/12.
//  Copyright © 2016年 Zeek. All rights reserved.
//

#import "PaperCanvasView.h"

@implementation PaperCanvasView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        UIImage *backgroundImage = [UIImage imageNamed:@"paper"];
        UIImageView *backgroundImageView = [[UIImageView alloc] initWithImage:backgroundImage];
        [self addSubview:backgroundImageView];
    }
    return self;
}

@end
