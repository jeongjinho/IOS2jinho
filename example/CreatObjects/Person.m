//
//  Person.m
//  CreatObjects
//
//  Created by 진호정 on 2016. 9. 20..
//  Copyright © 2016년 iosSchool. All rights reserved.
//

#import "Person.h"

@implementation Person



- (id)talk{

    NSLog(@"말을 합니다.");
    
    return nil;
    



}


- (id)run{


    NSLog(@" 우사인볼트의 속도로 달립니다");
    
    return nil;
    
}


- (id)eat:(id)food{

    NSLog(@"%@을 왕창 먹습니다.",food);
    
    return nil;

}
- (id)pushTo:(id)someone{


    NSLog(@"%@에게 밀다",someone);
    
    return nil;
}

- (id)talkTo:(id)someone where:(id)location{

    NSLog(@"%@와 %@에서 이야기하다",someone,location);
    
    return nil;
}
//매소드이름 =love:when:where:
- (id)love:(id)who when:(id)date where:(id)location{

    NSLog(@"%@에서 %@와 %@부터 사랑했다 ",location,who,date);

    return nil;

}

-(id)think:(id)what{



    NSLog(@"나는 %@을 생각한다. 고로 존재한다.",what);
    

    return nil;
}
- (id)make:(id)something{



    NSLog(@"나는 %@을 만드는 %@공장장이다!!.",something,something);
    


    return nil;

}
- (id)smell:(id)something{


    NSLog(@"%@의 냄새를 맡고  나는 이것이 인간에게서 날 냄새가 아니라는 것을 직감했다.",something);
    
    
    return nil;


}

- (id)study:(id)subject{



    NSLog(@"%@공부하는데 이것은 마치  재미없는 인터스텔라를 보는 기분이였다....",subject);
    

    return nil;
}
- (id)drink:(id)what{


    NSLog(@"%@음료수를 마실 바에는 한여름에 깍두기국물은 원샷하는게 나을 것 같다",what);
    
    
    return nil;

}
- (id)signUpWithUserId:(id)userid password:(id)pw emailAddress:(id)emailAdd phoneNumber:(id)phoneNum{


    NSLog(@"ID : %@ 비밀번호 : %@ 이메일주소 : %@ 핸드폰번호 : %@ ",userid,pw,emailAdd,phoneNum);



    return nil;

}
@end
