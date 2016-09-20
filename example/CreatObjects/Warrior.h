//
//  Warrior.h
//  CreatObjects
//
//  Created by 진호정 on 2016. 9. 20..
//  Copyright © 2016년 iosSchool. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 *@version 0.1
 *@discussion 츤데레 성격의 전사
 *힘이 세고 마력은 낮음
 *평균 데미지가 높음
 *@author  jinho
*/
@interface Warrior : NSObject


/// 남들 보다 체력이 높으며 레벌업 시 더 많은 체력이 증가한다.
@property id health;
/// 마법사 보다 마나양이 작으며 레벨업시 마법사보다 적게 증가한다.
@property id mana;

@property id physicalPower;
@property id magicalPower;
@property id weapon;


- (id)rush;
- (id)slaveTheRythm;
- (id)pushAxe;
- (id)hammerDown;
- (id)hitTheNeck;
- (id)dropTheTray:(id)to;
- (id)callToMother:(id)to;
- (id)realSoccerKick:(id)to;
@end
