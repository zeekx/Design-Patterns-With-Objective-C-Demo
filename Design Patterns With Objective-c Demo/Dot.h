//
//  Dot.h
//  Design Patterns With Objective-c Demo
//
//  Created by yubinqiang on 16/5/10.
//  Copyright © 2016年 Zeek. All rights reserved.
//

#import "Vertex.h"

@interface Dot : Vertex <Mark>
@property (nonatomic, strong) UIColor *color;
@property (nonatomic, assign) CGFloat size;

- (void)accecptMarkVisitor:(id<MarkVisitor>)visitor;
@end
