//
//  ScribbleManager.m
//  Design Patterns With Objective-c Demo
//
//  Created by yubinqiang on 16/6/23.
//  Copyright © 2016年 Zeek. All rights reserved.
//

#import "ScribbleManager.h"
#import <UIKit/UIImage.h>
#import "ScribbleMemento.h"

@interface ScribbleManager ()
- (NSURL *) scribbleDataPath;
- (NSURL *) scribbleThumbnailPath;
- (NSArray<NSURL *> *) scribbleDataPaths;
- (NSArray<NSURL *> *) scribbleThumbnailPaths;
@end

@implementation ScribbleManager : NSObject
- (void)saveScribble:(Scribble *)scribble thumbnail:(UIImage *)thumbnail {
    NSUInteger index = [self numberOfScriblles] + 1;
    NSString *scribbleDataName = [NSString stringWithFormat:@"data_%@", @(index).stringValue];
    NSString *thumbnailName = [NSString stringWithFormat:@"thumbnail_%@.png",@(index).stringValue];
    ScribbleMemento *memento = [scribble scribbleMemento];
    NSData *mementData = [memento data];
    NSURL *mementoPath = [self dataPathWithDataName:scribbleDataName];
    [mementData writeToURL:mementoPath atomically:YES];
    if (thumbnail) {
        NSData *imageData = [NSData dataWithData:UIImagePNGRepresentation(thumbnail)];
        NSURL *imageURL = [self scribbleThumbnailPathWithImageName:thumbnailName];
        [imageData writeToURL:imageURL atomically:YES];
    }
}

- (NSURL *)scribbleThumbnailPathWithImageName:(NSString *)imageName {
    return [[self scribbleThumbnailPath] URLByAppendingPathComponent:imageName];
}

- (NSUInteger)numberOfScriblles {
    return [self scribbleDataPaths].count;
}

- (Scribble *)scribbleAtIndex:(NSUInteger)index {
    NSURL *scribblePath = [self scribbleDataPaths][index];
    NSError *error = nil;
    NSData *data = [NSData dataWithContentsOfURL:scribblePath
                                         options:NSDataReadingUncached
                                           error:&error];
    ScribbleMemento *memento = [ScribbleMemento mementoWithData:data];
    Scribble *scribble = [Scribble scribbleWithMemento:memento];
    return scribble;
}

- (ScribbleThumbnail*)scribbleThumbnailAtIndex:(NSUInteger)index {
    NSURL *scribbleThumbnailPath = [self.scribbleThumbnailPaths objectAtIndex:index];
    ScribbleThumbnail *scribbleThumbnail = [[ScribbleThumbnail alloc] init];
//    scribbleThumbnail.image = [UIImage imageWithContentsOfFile:scribbleThumbnailPath.path];
    scribbleThumbnail.URLOfImage = scribbleThumbnailPath;
    scribbleThumbnail.URLOfScribble = [self.scribbleDataPaths objectAtIndex:index];
//    NSError *error = nil;
//    NSData *imageData = [NSData dataWithContentsOfURL:scribbleThumbnailPath
//                                              options:NSDataReadingUncached
//                                                error:&error];
//    NSAssert(error == nil, nil);
    
    return scribbleThumbnail;
}

-(NSURL *)dataPathWithDataName:(NSString *)dataName {
    return [[self scribbleDataPath] URLByAppendingPathComponent:dataName];
}

- (NSURL *) scribbleDataPath {
    NSURL *root = [[NSFileManager defaultManager] URLsForDirectory:NSDocumentDirectory inDomains:NSUserDomainMask].firstObject;
    NSURL *scribbleDataURL = [root URLByAppendingPathComponent:@"scribble/data"];
    if (![[NSFileManager defaultManager] fileExistsAtPath:scribbleDataURL.path isDirectory:NULL]) {
        NSError *error = nil;
        [[NSFileManager defaultManager] createDirectoryAtURL:scribbleDataURL
                                 withIntermediateDirectories:YES
                                                  attributes:nil
                                                       error:&error];
    }
    return scribbleDataURL;
}

- (NSURL *) scribbleThumbnailPath {
    NSURL *root = [[NSFileManager defaultManager] URLsForDirectory:NSDocumentDirectory inDomains:NSUserDomainMask].firstObject;
    NSURL *scribbleThumbailURL = [root URLByAppendingPathComponent:@"scribble/thumbnail"];
    if (![[NSFileManager defaultManager] fileExistsAtPath:scribbleThumbailURL.path isDirectory:NULL]) {
        NSError *error = nil;
        [[NSFileManager defaultManager] createDirectoryAtURL:scribbleThumbailURL
                                 withIntermediateDirectories:YES
                                                  attributes:nil
                                                       error:&error];
    }
    return scribbleThumbailURL;
}

- (NSArray<NSURL *> *) scribbleDataPaths {
    NSError *error = nil;
    NSArray<NSURL *> *paths = [[NSFileManager defaultManager] contentsOfDirectoryAtURL:[self scribbleDataPath]
                                                   includingPropertiesForKeys:nil
                                                                      options:NSDirectoryEnumerationSkipsSubdirectoryDescendants
                                                                        error:&error];
    return paths;
}

- (NSArray<NSURL *> *)scribbleThumbnailPaths {
    NSError *error = nil;
    NSArray<NSURL *> *paths = [[NSFileManager defaultManager] contentsOfDirectoryAtURL:[self scribbleThumbnailPath]
                                                            includingPropertiesForKeys:[NSArray array]
                                                                               options:NSDirectoryEnumerationSkipsSubdirectoryDescendants
                                                                                 error:&error];
    return paths;
}
@end
