//
//  ScirbbleMananger.h
//  Design Patterns With Objective-c Demo
//
//  Created by yubinqiang on 16/6/23.
//  Copyright © 2016年 Zeek. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ScribbleThumbnail.h"
#import "ScribbleThumbnailProxy.h"
#import "Scribble.h"

@class UIImage;
@interface ScirbbleMananger : NSObject
- (void)saveScribble:(Scribble *)scribble thumbnail:(UIImage *)thumbnail;
- (NSUInteger)numberOfScriblles;
- (Scribble *)scribbleAtIndex:(NSUInteger)index;
- (ScribbleThumbnail*)scribbleThumbnailAtIndex:(NSUInteger)index;
@end
