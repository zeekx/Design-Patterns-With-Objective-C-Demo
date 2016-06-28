//
//  CanvasView.h
//  Design Patterns With Objective-c Demo
//
//  Created by yubinqiang on 16/5/12.
//  Copyright © 2016年 Zeek. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Mark.h"

@interface CanvasView : UIView
@property (strong, nonatomic) id<Mark> mark;
@end
