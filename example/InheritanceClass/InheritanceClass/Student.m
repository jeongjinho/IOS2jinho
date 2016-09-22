//
//  Student.m
//  InheritanceClass
//
//  Created by 진호정 on 2016. 9. 22..
//  Copyright © 2016년 iosSchool. All rights reserved.
//

#import "Student.h"

@implementation Student



- (id)study{


    NSLog(@"%@이 국영수를 공부합니다.",self.name);

    
    return nil;
}

- (id)adopt:(Animal *)someone{
    
    
    NSLog(@"학생%@가 동물이름 %@를 입양실패  부모님의 반대로.",self.name,someone.name);
    
    return nil;
    
    
}

- (id)eat{
    
    NSLog(@"학생이 급식을 먹고있습니다.");
    
    
    return nil;
    
}
@end
