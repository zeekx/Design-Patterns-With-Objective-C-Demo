//
//  ClothCanvasViewGenerator.m
//  Design Patterns With Objective-c Demo
//
//  Created by yubinqiang on 16/5/12.
//  Copyright © 2016年 Zeek. All rights reserved.
//

#import "ClothCanvasViewGenerator.h"
#import "ClothCanvasView.h"

@implementation ClothCanvasViewGenerator
- (CanvasView *)canvasViewWithFrame:(CGRect)frame {
    return [[ClothCanvasView alloc] initWithFrame:frame];
}
@end
