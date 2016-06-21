//
//  StandardCharacterBuilder.m
//  Design Patterns With Objective-c Demo
//
//  Created by yubinqiang on 16/6/20.
//  Copyright © 2016年 Zeek. All rights reserved.
//

#import "StandardCharacterBuilder.h"

@implementation StandardCharacterBuilder
- (CharacterBuilder *)buildStrength:(float)value {
    self.character.protection *= value;
    self.character.power *= value;
    return  [super buildStrength:value];
}
- (CharacterBuilder *)buildStamina:(float)value {
    self.character.protection *= value;
    self.character.power *= value;
    return [super buildStamina:value];
}

- (CharacterBuilder *)buildIntelligence:(float)value {
    self.character.protection *= value;
    self.character.power /= value;
    return [super buildIntelligence:value];
}
- (CharacterBuilder *)buildAgility:(float)value {
    self.character.protection *= value;
    self.character.power /= value;
    return [super buildAgility:value];
}

- (CharacterBuilder *)buildAggressiveness:(float)value {
    self.character.protection /= value;
    self.character.power *= value;
    return [super buildAggressiveness:value];
}
@end
