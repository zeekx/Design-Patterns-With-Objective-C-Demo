//
//  CanvasViewController.h
//  Design Patterns With Objective-c Demo
//
//  Created by yubinqiang on 16/5/12.
//  Copyright © 2016年 Zeek. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Scribble.h"
#import "Stroke.h"



@interface CanvasViewController : UIViewController
@property (strong, nonatomic) UIColor *strokeColor;
@property (strong, nonatomic) Scribble *scribble;
@property (assign, nonatomic) CGFloat  strokeSize;
@end
