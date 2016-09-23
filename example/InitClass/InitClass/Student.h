//
//  Student.h
//  InitClass
//
//  Created by 진호정 on 2016. 9. 23..
//  Copyright © 2016년 iosSchool. All rights reserved.
//

#import "Person.h"

@interface Student : Person




@property NSString *school;
@property NSInteger grade;
@property NSString *credit;

//이름 ,도시 ,학교,학년
- (instancetype)initWihtName :(NSString *)name city :(NSString *)city schoolName :(NSString *)school grade :(NSInteger)grade;

- (instancetype)initWihtName :(NSString *)name city :(NSString *)city schoolName :(NSString *)school grade :(NSInteger)grade credit : (NSString *)credit;


@end
