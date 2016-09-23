//
//  Person.h
//  InheritanceClass
//
//  Created by 진호정 on 2016. 9. 22..
//  Copyright © 2016년 iosSchool. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Animal.h"
//#import "Student.h"
@class Student;
//#import "Student.h"
//#import "Teacher.h"
@interface Person : NSObject


@property NSString  *name;
@property NSInteger age;
@property NSInteger residentNumber;
@property NSString  *bloodType;

- (id)eat;
- (id)eatWhat :(id)food;
- (id)what : (Student *)someone;
- (id)adopt :(Animal *)someone;



@end
