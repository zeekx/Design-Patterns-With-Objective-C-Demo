//
//  ClothCanvasView.m
//  Design Patterns With Objective-c Demo
//
//  Created by yubinqiang on 16/5/12.
//  Copyright © 2016年 Zeek. All rights reserved.
//

#import "ClothCanvasView.h"

@implementation ClothCanvasView
- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self addSubview:[[UIImageView alloc] initWithImage:[UIImage imageNamed:@"cloth"]]];
    }
    return self;
}

@end
