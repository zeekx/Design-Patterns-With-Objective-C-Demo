//
//  ScribbleThumbnailCollectionViewFlowLayout.m
//  Design Patterns With Objective-c Demo
//
//  Created by yubinqiang on 16/9/5.
//  Copyright © 2016年 Zeek. All rights reserved.
//

#import "ScribbleThumbnailCollectionViewFlowLayout.h"

@implementation ScribbleThumbnailCollectionViewFlowLayout
- (instancetype)init {
    self = [super init];
    if (self) {
        self.itemSize = CGSizeMake(64, 64);
        self.minimumInteritemSpacing = 10;
        self.minimumLineSpacing = 10;
    }
    return self;
}
@end
