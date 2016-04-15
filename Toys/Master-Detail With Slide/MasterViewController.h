//
//  MasterViewController.h
//  Master-Detail With Slide
//
//  Created by yubinqiang on 16/4/6.
//  Copyright © 2016年 Zeek. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DetailViewController;

@interface MasterViewController : UITableViewController

@property (strong, nonatomic) DetailViewController *detailViewController;


@end

