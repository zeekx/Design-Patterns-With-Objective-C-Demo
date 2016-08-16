//
//  ScribbleThumbnailViewImageProxy.m
//  Design Patterns With Objective-c Demo
//
//  Created by yubinqiang on 16/7/15.
//  Copyright © 2016年 Zeek. All rights reserved.
//

#import "ScribbleThumbnailViewImageProxy.h"
#import <Foundation/NSAutoreleasePool.h>

@interface ScribbleThumbnailViewImageProxy ()
@property (nonatomic, assign) BOOL loadingThreadHasLaunched;

- (void)forwardImageLoadingThread;

@end

@implementation ScribbleThumbnailViewImageProxy

@synthesize image = _image;

- (UIImage *)image {
    if (_image == nil) {
        _image = [[UIImage alloc] initWithContentsOfFile:self.imagePath];
    }
    return _image;
}

- (void)forwardImageLoadingThread {    
    [self image];
    [self performSelectorInBackground:@selector(setNeedsDisplay) withObject:nil];
}

- (void)drawRect:(CGRect)rect {
    if (_image == nil) {
        CGContextRef context = UIGraphicsGetCurrentContext();
        
        CGContextSetLineWidth(context, 10.0F);
        const CGFloat dashLeghts[2] = {10, 3};
        CGContextSetLineDash(context, 3, dashLeghts, sizeof(dashLeghts)/sizeof(CGFloat));
        CGContextSetStrokeColorWithColor(context, [UIColor darkGrayColor].CGColor);
        CGContextSetFillColorWithColor(context, [UIColor lightGrayColor].CGColor);
        CGContextAddRect(context, rect);
        CGContextDrawPath(context, kCGPathFillStroke);
        if (self.loadingThreadHasLaunched) {
            [self performSelectorInBackground:@selector(forwardImageLoadingThread) withObject:nil];
            self.loadingThreadHasLaunched = YES;
        }
    } else {
        [self.image drawInRect:rect];
    }
}
@end
