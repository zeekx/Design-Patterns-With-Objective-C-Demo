//
//  CoordinatingController.h
//  Design Patterns With Objective-c Demo
//
//  Created by yubinqiang on 16/6/21.
//  Copyright © 2016年 Zeek. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, BarButtonItemTag) {
    kBarButtonItemTagSaveScribble,
    kBarButtonItemTagOpenScribble,
    kBarButtonItemTagOpenPaletteView,
    kBarButtonItemTagUnDo,
    kBarButtonItemTagReDo,
    kBarButtonItemTagTrash,
    kBarButtonItemTagDone
};


@class CanvasViewController;

@interface CoordinatingController : UIViewController
+ (CoordinatingController *)sharedCoordinatingController;
- (IBAction)requestViewChangedWithObject:(NSObject *)sender;

@property (strong, nonatomic) CanvasViewController *canvasViewController;
@property (strong, nonatomic) UIViewController *activeViewController;
@end
