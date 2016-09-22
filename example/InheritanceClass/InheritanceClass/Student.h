//
//  Student.h
//  InheritanceClass
//
//  Created by 진호정 on 2016. 9. 22..
//  Copyright © 2016년 iosSchool. All rights reserved.
//

#import "Person.h"

@interface Student : Person


@property NSString *grade;
@property NSString *studentID;
//@property NSString *department;


- (id)study;


@end
