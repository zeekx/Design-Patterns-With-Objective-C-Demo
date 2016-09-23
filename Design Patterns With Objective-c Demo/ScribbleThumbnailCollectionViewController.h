//
//  ScribbleThumbnailCollectionViewController.h
//  Design Patterns With Objective-c Demo
//
//  Created by yubinqiang on 16/9/5.
//  Copyright © 2016年 Zeek. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ScribbleManager;
@interface ScribbleThumbnailCollectionViewController : UICollectionViewController
@property (strong, nonatomic) ScribbleManager *scribbleManager;
@end
