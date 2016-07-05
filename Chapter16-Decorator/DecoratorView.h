//
//  DecoratorView.h
//  Design Patterns With Objective-c Demo
//
//  Created by yubinqiang on 16/7/4.
//  Copyright © 2016年 Zeek. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ImageComponent.h"

@interface DecoratorView : UIView
@property (strong, nonatomic) id<ImageComponent> image;
//@property (strong, nonatomic) UIImage * image;
@end
