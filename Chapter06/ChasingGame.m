//
//  ChasingGame.m
//  Design Patterns With Objective-c Demo
//
//  Created by yubinqiang on 16/6/21.
//  Copyright © 2016年 Zeek. All rights reserved.
//

#import "ChasingGame.h"
#import "Character.h"
#import "CharacterBuilder.h"

@implementation ChasingGame
- (Character *)createPlayer:(CharacterBuilder *)builder {
    [builder buildNewCharacter];
    [builder buildStrength:50.0F];
    [builder buildStamina:25.0F];
    [builder buildIntelligence:75.0F];
    [builder buildAgility:65.0F];
    [builder buildAggressiveness:35.0F];
    return builder.character;
}

- (Character *)createEnemy:(CharacterBuilder *)builder {
    [builder buildNewCharacter];
    [builder buildStrength:80.0F];
    [builder buildStamina:65.0F];
    [builder buildIntelligence:35.0F];
    [builder buildAgility:25.0F];
    [builder buildAggressiveness:95.0F];
    return builder.character;
}
@end
