//
//  CharacterBuilder.m
//  Design Patterns With Objective-c Demo
//
//  Created by yubinqiang on 16/6/20.
//  Copyright © 2016年 Zeek. All rights reserved.
//

#import "CharacterBuilder.h"
#import "Character.h"

@interface CharacterBuilder ()
@property(strong, nonatomic, readwrite) Character *character;
@end

@implementation CharacterBuilder
- (CharacterBuilder *)buildNewCharacter {
    self.character = [[Character alloc] init];
    return self;
}

- (CharacterBuilder *)buildStrength:(float)value {
    self.character.strength = value;
    return self;
}

- (CharacterBuilder *)buildStamina:(float)value {
    self.character.stamina = value;
    return self;
}

- (CharacterBuilder *)buildIntelligence:(float)value {
    self.character.intelligence = value;
    return self;
}

- (CharacterBuilder *)buildAgility:(float)value {
    self.character.agility = value;
    return self;
}

- (CharacterBuilder *)buildAggressiveness:(float)value {
    self.character.aggressiveness = value;
    return self;
}
@end
