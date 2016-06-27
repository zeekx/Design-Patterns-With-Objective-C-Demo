//
//  ScirbbleMananger.m
//  Design Patterns With Objective-c Demo
//
//  Created by yubinqiang on 16/6/23.
//  Copyright © 2016年 Zeek. All rights reserved.
//

#import "ScirbbleMananger.h"
#import <UIKit/UIImage.h>
#import "ScribbleMemento.h"

@interface ScirbbleMananger ()

@end

@implementation ScirbbleMananger
- (void)saveScribble:(Scribble *)scribble thumbnail:(UIImage *)thumbnail {
    NSUInteger index = [self numberOfScriblles] + 1;
    NSString *scribbleDataName = [NSString stringWithFormat:@"data_%@", @(index).stringValue];
    NSString *thumbnailName = [NSString stringWithFormat:@"thumbnail_%@.png",@(index).stringValue];
    
    NSData *mementData = scribble.memento.data;
    NSURL *mementoPath = [self dataPathWithDataName:scribbleDataName];
    [mementData writeToURL:mementoPath atomically:YES];
    
    NSData *imageData = [NSData dataWithData:UIImagePNGRepresentation(thumbnail)];
    NSURL *imageURL = [self scribbleThumbnailPathWithImageName:thumbnailName];
    [imageData writeToURL:imageURL atomically:YES];
}

- (NSURL *)scribbleThumbnailPathWithImageName:(NSString *)imageName {
    assert(NO);
    return nil;
}

- (NSUInteger)numberOfScriblles {
    assert(NO);
    return 0;
}
- (Scribble *)scribbleAtIndex:(NSUInteger)index {
    assert(NO);
    return nil;
}
- (ScribbleThumbnail*)scribbleThumbnailAtIndex:(NSUInteger)index {
    assert(NO);
    return nil;
}

-(NSURL *)dataPathWithDataName:(NSString *)dataName {
    assert(NO);
    return nil;
}
@end
