//
//  Archer.h
//  DataTypeClass
//
//  Created by 진호정 on 2016. 9. 21..
//  Copyright © 2016년 iosSchool. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Warrior;//??
@interface Archer : NSObject



@property NSString  *name;
@property NSUInteger health;
@property NSUInteger mana;
@property NSString *weapon;
@property NSInteger physicalPower;
@property NSInteger magicalPower;
@property NSInteger speed;
@property BOOL      isDead;


- (id)fireArrow : (Warrior *)someCharacter;
- (id)doubleShot : (Warrior *)someCharacter;
- (id)silverArrow : (Warrior *)someCharacter;
- (id)magicalArrow : (Warrior * ) someCharacter;
- (id)jumpTolocation : (NSString * )location;
@end
