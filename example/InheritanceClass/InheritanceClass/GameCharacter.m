//
//  GameCharacter.m
//  InheritanceClass
//
//  Created by 진호정 on 2016. 9. 22..
//  Copyright © 2016년 iosSchool. All rights reserved.
//

#import "GameCharacter.h"





@implementation GameCharacter



- (id)physicalAttackTo:(GameCharacter *)someone{

   // NSInteger beforeHealth= someone.health;
  // someone.health = beforeHealth - self.physicalPower;
    
    //NSLog(@"전사가 공격을 하여 %ld피해를 입혀서 상대방이체력이 %ld에서 %ld가 되었습니
    //다.",self.physicalPower,beforeHealth, someone.health);
    
    [someone damagedAs:self.physicalPower];

    return nil;
}

- (id)damagedAs:(NSInteger)damage{

    self.health=self.health-damage;
    


    return nil;
}
@end
