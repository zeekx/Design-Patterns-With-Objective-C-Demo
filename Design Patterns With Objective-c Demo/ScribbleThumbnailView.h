//
//  ScribbleThumbnailView.h
//  Design Patterns With Objective-c Demo
//
//  Created by yubinqiang on 16/7/15.
//  Copyright © 2016年 Zeek. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ScribbleThumbnailView : UIView
@property (nonatomic, readonly) UIImage     *image;
@property (nonatomic, copy    ) NSString    *imagePath;
@end
