//
//  Warrior.m
//  DataTypeClass
//
//  Created by 진호정 on 2016. 9. 21..
//  Copyright © 2016년 iosSchool. All rights reserved.
//

#import "Warrior.h"
#import "Archer.h"
@implementation Warrior


/**
 self
 
 
   객체 스스로 자신을 지칭할 때 사용하는 키워드
 호출
 [self someMethod:value]
 
 
*/
- (id)physicalAttackToEnermy:(Archer *)someCharacter{
    
    
    //마법사의 이전체력
    NSUInteger  beforeHealth=someCharacter.health;;
    
    
    //전사의 물리공격력만큼 궁수의 체력을 감소시킵니다.
    
    //공격 시 죽을지 안죽을지 검사
    if(someCharacter.health<=self.physicalPower){
        
        
        someCharacter.isDead =YES;
        
    }
    //공격
    someCharacter.health =beforeHealth - self.physicalPower;
    
    
    
    
    
    
    
    NSLog(@"%@유저가 %@유저에게 물리공격을 가하여 %ld만큼의 데미지를 입혔습니다 .\n",self.name,someCharacter.name,self.physicalPower);
    
    if(someCharacter.isDead==NO){
        
      NSLog(@"%@유저의 체력이 %lu에서 %lu로 변경되었습니다.",
            someCharacter.name,beforeHealth,someCharacter.health);
    
        
    
    }
    else if(someCharacter.isDead==YES){
    
        NSLog(@"사망");
    
    }
    return nil;
    
}

    
    //전사가 궁수에게 물리공격을 가하여  XXX 만큼의 데미지를 입혔습니다.
    //마법사의 체력이  XX에서  XX으로 변경되었습니다.




//Warrio's magic Attack skill method


- (id)magicalAttackToEnermy:(Archer *)someCharacter{

    //마나가 20이하 일 경우
    if(self.mana<20){
        
        NSLog(@"마나가 없습니다.");
    
    
    }
    //마나가 있을 경우
    else{
       
        //마법공격으로 인한 마나감소
        
        NSUInteger beforeWarriorMana=self.mana;
       self.mana= self.mana-20;
        
        
       //공격으로 인한 상대 체력감소
        
        NSUInteger beforeEnemyHealth=someCharacter.health;
        
        someCharacter.health=beforeEnemyHealth - self.magicalPower;
        
        
        NSLog(@"%@유저가 마법공격을사용하여 마나가 %lu에서 %lu로 감소했습니다. ",self.name,beforeWarriorMana,self.mana);
        NSLog(@"%@유저가 마법공격을 맞아서 체력이 %lu 에서 %lu로 감소했습니다.",someCharacter.name,beforeEnemyHealth,someCharacter.health);
       
    
    
    
    }
    






    return nil;

}






@end
