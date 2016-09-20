//
//  Wizard.m
//  CreatObjects
//
//  Created by 진호정 on 2016. 9. 20..
//  Copyright © 2016년 iosSchool. All rights reserved.
//

#import "Wizard.h"

@implementation Wizard



- (id)energyball:(id)someone{


    
    NSLog(@"에너지볼을 쏴서 밀어버립니닷!!!");
    NSLog(@"%@에서 체력이 30닳았습니다.",someone);
    
    return nil;
    
}

- (id)fireAllow{


    NSLog(@"불화살을 날려 지속적인 데미지를 줍니다.");
    
    return nil;
    

}

- (id)iceAllow{

    NSLog(@"얼음화살을 날려서  상대를 5초동안 멈추게 합니다.");
    
    return nil;

}

- (id)blizzard{
    
    
    NSLog(@"궁극기를 써서 8명에 상대에게 초당 50에 피해를 입힙니다.");
    
    return nil;
}

- (id)heal{
   
    NSLog(@"자신의 체력을 30%% 회복합니다.");

    return nil;

   }
- (id)getItem:(id)item{

    NSLog(@"%@를 획득 했습니다.",item);

    return nil;
}


- (id)windStorm:(id)to{


    NSLog(@"%@에게  마법으로된 눈보라공격을 하여 눈사람이 되게 하여  5분동안 지속적으로  초당데미지 20을 입힌다.",to);

    return nil;
}

- (id)magicalAttack:(id)to{




    NSLog(@"%@의 볼에 마법으로된 마법손바닥을 쳐서 수치심으로 인한 데미지50을 준다",to);


    return nil;
}
@end
