//
//  CoordinatingController.h
//  Design Patterns With Objective-c Demo
//
//  Created by yubinqiang on 16/6/21.
//  Copyright © 2016年 Zeek. All rights reserved.
//

#import <Foundation/Foundation.h>
@class CanvasViewController;
@interface CoordinatingController : NSObject
+ (CoordinatingController *)sharedCoordinatingController;
- (CanvasViewController *)canvasViewController;
@end
