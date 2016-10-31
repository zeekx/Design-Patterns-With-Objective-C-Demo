//
//  ViewController.m
//  Chapter19-Strategy
//
//  Created by yubinqiang on 16/7/11.
//  Copyright © 2016年 Zeek. All rights reserved.
//

#import "ViewController.h"
#import "CustomTextField.h"

@interface ViewController ()

@end

@implementation ViewController

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [self handleTextFieldEditing:textField];
    return NO;
}

- (void)textFieldDidEndEditing:(UITextField *)textField {
    [self handleTextFieldEditing:textField];
}

- (void)handleTextFieldEditing:(UITextField *)textField {
    if (textField.text.length > 0 && [textField isKindOfClass:CustomTextField.class]) {
        NSError *error = nil;
        if (![(CustomTextField *)textField validate:&error]) {
            NSLog(@"%s textField(%@)-error:%@",__PRETTY_FUNCTION__, textField,error);
            UIAlertController *alertControll = [UIAlertController alertControllerWithTitle:error.localizedDescription
                                                                                   message:error.localizedFailureReason
                                                                            preferredStyle:UIAlertControllerStyleAlert];
            [alertControll addAction:[UIAlertAction actionWithTitle:@"OK"
                                                              style:UIAlertActionStyleCancel
                                                            handler:NULL]];
            [self.navigationController presentViewController:alertControll animated:YES completion:NULL];
        }
    }
}
@end
