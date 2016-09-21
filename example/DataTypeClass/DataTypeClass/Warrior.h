//
//  Warrior.h
//  DataTypeClass
//
//  Created by 진호정 on 2016. 9. 21..
//  Copyright © 2016년 iosSchool. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Archer;//??
@interface Warrior : NSObject


@property NSString  *name;
@property NSUInteger health;
@property NSUInteger mana;
@property NSString  *weapon;
@property NSInteger physicalPower;
@property NSInteger magicalPower;
@property NSInteger speed;
@property BOOL      isDead;


- (id)physicalAttackToEnermy : (Archer *)someCharacter;
- (id)magicalAttackToEnermy : (Archer *)someCharacter;
- (id)jumptolocation : (NSString * )someWhere;


@end
