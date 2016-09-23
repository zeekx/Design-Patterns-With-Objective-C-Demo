//
//  ScribbleThumbnail.h
//  Design Patterns With Objective-c Demo
//
//  Created by yubinqiang on 16/6/23.
//  Copyright © 2016年 Zeek. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIImage.h>

@interface ScribbleThumbnail : NSObject
@property (strong, nonatomic) UIImage *image;
@property (copy  , nonatomic) NSURL *URLOfImage;
@property (copy  , nonatomic) NSURL *URLOfScribble;
@end
