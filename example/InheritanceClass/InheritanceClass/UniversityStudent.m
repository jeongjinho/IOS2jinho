//
//  UniversityStudent.m
//  InheritanceClass
//
//  Created by 진호정 on 2016. 9. 22..
//  Copyright © 2016년 iosSchool. All rights reserved.
//

#import "UniversityStudent.h"

@implementation UniversityStudent



- (id)goMT{

    NSLog(@"%@학과 %@의 학생들이 엠티를 갑니다.",self.major,self.grade);

    return nil;
}

- (id)eat{
    [super eat];
    NSLog(@"대학생이 학식을 먹고있습니다.");
    
    
    return nil;
}
@end
