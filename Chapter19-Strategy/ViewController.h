//
//  ViewController.h
//  Chapter19-Strategy
//
//  Created by yubinqiang on 16/7/11.
//  Copyright © 2016年 Zeek. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CustomTextField.h"

@interface ViewController : UIViewController <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet CustomTextField *numericTextField;
@property (weak, nonatomic) IBOutlet CustomTextField *alphaTextField;

@end

