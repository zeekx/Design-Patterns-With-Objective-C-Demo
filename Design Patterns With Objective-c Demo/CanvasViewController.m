//
//  CanvasViewController.m
//  Design Patterns With Objective-c Demo
//
//  Created by yubinqiang on 16/5/12.
//  Copyright © 2016年 Zeek. All rights reserved.
//

#import "CanvasViewController.h"
#import "CanvasView.h"
#import "CanvasViewGenerator.h"
#import "Vertex.h"
#import "Dot.h"


@interface CanvasViewController ()
@property (strong, nonatomic) CanvasView *canvasView;
@property (assign, nonatomic) CGPoint startPoint;
@end

@implementation CanvasViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.navigationController setNavigationBarHidden:YES];
    self.navigationController.toolbarHidden = YES;
    
    self.scribble = [[Scribble alloc] init];
    
    [self loadCanvasViewWithGenerator:[[CanvasViewGenerator alloc] init]];
    [self test];
}
- (void)test {
    Stroke *stroke = [[Stroke alloc] init];
    [stroke addMark:[[Dot alloc] initWithLocation:CGPointMake(0, 0)]];
    [stroke addMark:[[Dot alloc] initWithLocation:CGPointMake(1, 0)]];
    [stroke addMark:[[Dot alloc] initWithLocation:CGPointMake(2, 0)]];
    [stroke addMark:[[Dot alloc] initWithLocation:CGPointMake(3, 0)]];
    [stroke addMark:[[Dot alloc] initWithLocation:CGPointMake(4, 0)]];
    
    [stroke enumerateMarksUsingBlock:^(id<Mark> item, BOOL *stop) {
        NSLog(@"item:%@",item);
    }];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)loadCanvasViewWithGenerator:(CanvasViewGenerator *)generator {
    [self.canvasView removeFromSuperview];
    self.canvasView = [generator canvasViewWithFrame:self.view.bounds];
    [self.view addSubview:self.canvasView];
}

- (void)setScribble:(Scribble *)scribble {
    if (_scribble != scribble) {
        _scribble = scribble;
        //TODO:Use [self addObserver:self forKeyPath:@"scrbble.mark" options:Initial | New context:NULL] to instead it.
        [_scribble addObserver:self
                    forKeyPath:@"mark"
                       options:NSKeyValueObservingOptionNew | NSKeyValueObservingOptionInitial
                       context:NULL];
    }
}

- (void)dealloc {
    [self.scribble removeObserver:self forKeyPath:@"mark" context:NULL];
}

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSString *,id> *)change context:(void *)context {
    if ([object isKindOfClass:Scribble.class]
        && [keyPath isEqualToString:@"mark"]) {
        id<Mark> mark = change[NSKeyValueChangeNewKey];
        [self.canvasView setMark:mark];
        [self.canvasView setNeedsDisplay];
    }
}

#pragma mark - Touchs
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    self.startPoint = [[touches anyObject] locationInView:self.canvasView];
}

- (void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    CGPoint lastPoint = [[touches anyObject] previousLocationInView:self.canvasView];
    if (CGPointEqualToPoint(self.startPoint, lastPoint)) {
        id<Mark> newStroke = [[Stroke alloc] init];
        [newStroke setSize:self.strokeSize];
        [newStroke setColor:self.strokeColor];
        [self.scribble addMark:newStroke shouldAddToPreviousMark:NO];
    }
    
    CGPoint point = [[touches anyObject] locationInView:self.canvasView];
    Vertex *vertext = [[Vertex alloc] initWithLocation:point];
    [self.scribble addMark:vertext shouldAddToPreviousMark:YES];
}

- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    CGPoint lastPoint = [[touches anyObject] previousLocationInView:self.canvasView];
    CGPoint point = [[touches anyObject] locationInView:self.canvasView];
    if (CGPointEqualToPoint(lastPoint, point)) {
        Dot *singleDot = [[Dot alloc] initWithLocation:point];
        [singleDot setColor:self.strokeColor];
        [singleDot setSize:self.strokeSize];
        [self.scribble addMark:singleDot shouldAddToPreviousMark:NO];
        
    }
    self.startPoint = CGPointZero;
}
@end
