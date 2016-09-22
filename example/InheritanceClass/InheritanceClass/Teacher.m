//
//  Teacher.m
//  InheritanceClass
//
//  Created by 진호정 on 2016. 9. 22..
//  Copyright © 2016년 iosSchool. All rights reserved.
//

#import "Teacher.h"

@implementation Teacher



- (id)teach:(Student *)someone{



    NSLog(@"%@선생님이 %@에게 %@과목을 가르칩니다.",self.name,someone.name,self.subject);


    return nil;
}

@end
