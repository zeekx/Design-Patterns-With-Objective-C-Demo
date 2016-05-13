//
//  PaperCanvasViewGenerator.m
//  Design Patterns With Objective-c Demo
//
//  Created by yubinqiang on 16/5/12.
//  Copyright © 2016年 Zeek. All rights reserved.
//

#import "PaperCanvasViewGenerator.h"
#import "PaperCanvasView.h"

@implementation PaperCanvasViewGenerator
- (CanvasView *)canvasViewWithFrame:(CGRect)frame {
    return [[PaperCanvasView alloc] initWithFrame:frame];
}
@end
