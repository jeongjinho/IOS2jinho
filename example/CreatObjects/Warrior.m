//
//  Warrior.m
//  CreatObjects
//
//  Created by 진호정 on 2016. 9. 20..
//  Copyright © 2016년 iosSchool. All rights reserved.
//

#import "Warrior.h"

@implementation Warrior



- (id)rush{

    NSLog(@"돌진하여 상대를 밀어서 5m뒤로 보냅니다.");
    
    return nil;
    


}

- (id)slaveTheRythm{

    NSLog(@" 제자리에서 회전하여 가까이 있는 상대에게 150의 피해를 줍니다.");
    
    return nil;
    

}

- (id)pushAxe{

    NSLog(@"기를 모아서  거대한 도끼를 전방에 보내 400의 데미지를 입힙니다.");
    
    return nil;

}
- (id)hammerDown{

    NSLog(@"무기를 아래로 내려 찍어  3초동안 멈추게 합니다.");
    
    return nil;
}
- (id)hitTheNeck{

    NSLog(@"30%%확률로 적의 체력에 50%%를 깍습니다.");

    return nil;
}

- (id)dropTheTray: (id)to{



    NSLog(@"  노래가 울려퍼지며 하늘로 부러 내려오는 쟁반이 %@의 머리를 강타하여 뇌진탕증상으로 인한 데미지200",to);

    
    return nil;

}
- (id)callToMother:(id)to{

    
    NSLog(@"%@의 뒤에서  등짝스매싱으로 인한 데미지 300을 입힌다.",to);
    
    return nil;
    



}

- (id)realSoccerKick:(id)to{


    NSLog(@"시전 시 이천수로 빙의하여 말디니에게 한 것 처럼 머리에 사커킥을 시전 억울함에 데미지 300을 입힌다.");


    return nil;
}
@end
