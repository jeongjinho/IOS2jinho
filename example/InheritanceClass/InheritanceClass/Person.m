//
//  Person.m
//  InheritanceClass
//
//  Created by 진호정 on 2016. 9. 22..
//  Copyright © 2016년 iosSchool. All rights reserved.
//

#import "Person.h"

@implementation Person



- (id)eatWhat:(id)food{


    NSLog(@"%@가 %@을 먹습니다.",self.name,food);
    
    return nil;

}

- (id)adopt:(Animal *)someone{

   
    NSLog(@"%@가 동물이름 %@를 입양했습니다.",self.name,someone.name);
   
    return nil;


}


- (id)eat{

    NSLog(@"사람이 집밥을 먹고있습니다.");


    return nil;
   // Student *aaa = [[Student alloc] init];

}



@end
