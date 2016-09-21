//
//  Archer.m
//  DataTypeClass
//
//  Created by 진호정 on 2016. 9. 21..
//  Copyright © 2016년 iosSchool. All rights reserved.
//

#import "Archer.h"
#import "Warrior.h"
@implementation Archer






- (id)fireArrow : (Warrior *)someCharacter{

    
     //공격 하여 체력 떨어뜨림
    
    NSInteger beforeEnemyHealth=someCharacter.health;
    
    
    someCharacter.health =beforeEnemyHealth -self.physicalPower;
    
    
    
    NSLog(@"%@유저가 %@유저에게  불화살공격을 가하여 %ld만큼의 데미지를 입혔습니다 .\n",self.name,someCharacter.name,self.physicalPower);
    NSLog(@"%@유저의 체력이 %lu에서 %lu로 변경되었습니다.",someCharacter.name,beforeEnemyHealth,someCharacter.health);
    


    return nil;






}
@end
