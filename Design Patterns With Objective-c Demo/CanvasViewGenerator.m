//
//  CanvasViewGenerator.m
//  Design Patterns With Objective-c Demo
//
//  Created by yubinqiang on 16/5/12.
//  Copyright © 2016年 Zeek. All rights reserved.
//

#import "CanvasViewGenerator.h"
#import "CanvasView.h"

@implementation CanvasViewGenerator
- (CanvasView *)canvasViewWithFrame:(CGRect)frame {
    return [[CanvasView alloc] initWithFrame:frame];
}
@end
