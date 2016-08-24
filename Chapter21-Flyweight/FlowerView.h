//
//  FlowerView.h
//  Design Patterns With Objective-c Demo
//
//  Created by yubinqiang on 16/8/24.
//  Copyright © 2016年 Zeek. All rights reserved.
//

#import <UIKit/UIKit.h>



@interface FlowerView : UIImageView
@property (strong, nonatomic) UIImage *image;
- (instancetype) initWithImage:(UIImage *)iamge;
@end


@interface ExtrinsicFlowerState : NSObject
@property (strong, nonatomic) UIView *flowerView;
@property (assign, nonatomic) CGRect area;
@end