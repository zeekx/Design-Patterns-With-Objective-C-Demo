//
//  ViewController.m
//  Chapter17-Chain of Responsibility
//
//  Created by yubinqiang on 16/7/5.
//  Copyright © 2016年 Zeek. All rights reserved.
//

#import "ViewController.h"

#import "AttackHandler.h"
#import "Avatar.h"
#import "CrystalShield.h"
#import "MetalArmor.h"

#import "Attack.h"
#import "SwordAttack.h"
#import "MagicFireAttack.h"
#import "LightningAttack.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    AttackHandler *avatar = [Avatar new];
    
    AttackHandler *metalArmoredAvatar = [MetalArmor new];
    metalArmoredAvatar.nextAttrackHandler = avatar;
    
    AttackHandler *superAvatar = [CrystalShield new];
    superAvatar.nextAttrackHandler = metalArmoredAvatar;
    
    Attack *swordAttack = [SwordAttack new];
    [superAvatar handleAttack:swordAttack];
    
    NSLog(@"----");
    Attack *magicFireAttack = [MagicFireAttack new];
    [superAvatar handleAttack:magicFireAttack];
    
    NSLog(@"----");
    Attack *lightningAttack = [LightningAttack new];
    [superAvatar handleAttack:lightningAttack];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
