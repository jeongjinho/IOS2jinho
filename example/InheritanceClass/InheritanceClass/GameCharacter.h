//
//  GameCharacter.h
//  InheritanceClass
//
//  Created by 진호정 on 2016. 9. 22..
//  Copyright © 2016년 iosSchool. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GameCharacter : NSObject


@property NSInteger health;
@property NSInteger mana;
@property NSInteger physicalPower;
@property NSInteger magicalPower;
@property BOOL isDead;
@property NSString *name;
@property NSString *weapon;


- (id)physicalAttackTo:(GameCharacter*)someone;
- (id)damagedAs: (NSInteger)damage;


@end
