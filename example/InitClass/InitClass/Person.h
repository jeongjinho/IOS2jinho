//
//  Person.h
//  InitClass
//
//  Created by 진호정 on 2016. 9. 23..
//  Copyright © 2016년 iosSchool. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject



@property NSString *name;
@property NSInteger age;
@property NSString *mobileNumber;
@property NSString *city;
@property BOOL  isHandSome;

//이름 ,잘생겼는지
//초기화는 법

- (instancetype)initWithName:(NSString * )name isHandsome:(BOOL)isHandSome ;  //initWith로 시작 :무엇과 함께 초기화 할것인가

- (instancetype)initWithName :(NSString *)name city :(NSString *)city;

@end
