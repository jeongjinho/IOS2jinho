//
//  Student.m
//  InitClass
//
//  Created by 진호정 on 2016. 9. 23..
//  Copyright © 2016년 iosSchool. All rights reserved.
//

#import "Student.h"

@implementation Student
 


- (instancetype)initWihtName:(NSString *)name city:(NSString *)city schoolName:(NSString *)school grade:(NSInteger)grade{


    self= [super initWithName:name city:city];
   // self.name =name;
    //self.city =city;
    self.school =school;
    self.grade = grade;


    return self;


}

- (instancetype)initWihtName:(NSString *)name city:(NSString *)city schoolName:(NSString *)school grade:(NSInteger)grade credit:(NSString *)credit{



    self =[self initWihtName:name city:city schoolName:school grade:grade];
    
    self.credit =credit;
    
    
    return  self;





}


@end
