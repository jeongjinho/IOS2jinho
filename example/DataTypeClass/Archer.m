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
    


    return nil ;
    
}

- (id)silverArrow:(Warrior *)someCharacter{

//공격 시 상대가 죽는지 판별 하여 분기
    
    
     NSUInteger silverArrowDamage = self.physicalPower+self.speed;
    if(someCharacter.health<=silverArrowDamage){
    
        someCharacter.isDead =YES;
         NSLog(@"%@유저가 %@유저에게  불화살공격을 가하여 %ld만큼의 데미지를 입혔습니다 .\n",self.name,someCharacter.name,silverArrowDamage);
        
        NSLog(@"사망했습니다.");
        
        }
    
    else{
       
        NSUInteger beforeHealth=someCharacter.health ;
        
          someCharacter.health= beforeHealth- silverArrowDamage;

        someCharacter.isDead =YES;

        NSLog(@"%@유저가 %@유저에게  불화살공격을 가하여 %ld만큼의 데미지를 입혔습니다 .\n",self.name,someCharacter.name,silverArrowDamage);
        
        NSLog(@"%@유저의 체력이 %lu에서 %lu로 변경되었습니다.",someCharacter.name,
              
              beforeHealth,someCharacter.health);
        }
    
    
    
    return nil;

}
@end
