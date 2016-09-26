//
//  main.m
//  GradesCaculatorClass
//
//  Created by 진호정 on 2016. 9. 26..
//  Copyright © 2016년 iosSchool. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CaculationSubject.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        
        //객체생성
        CaculationSubject *caculator = [[CaculationSubject alloc] init];
        
        //점수추가 메서드 호출
        [caculator addScore:100];
        NSLog(@"%ld",caculator.totalScore);
        //점수추가 메서드 호출
        [caculator addScore:100];
        NSLog(@"%ld",caculator.totalScore);
        
        CGFloat average;
        
        //평균구하는 메서드 호출
        average=[caculator average];
        NSLog(@"%f",average);
        //점수추가 메서드 호출
        
        [caculator addScore:300];
        
        NSLog(@"총점 : %ld",caculator.totalScore);
        
        
        
         NSString *name = @"joo";
        NSString *full= [NSString stringWithFormat:@"my name is %@",name];
       // NSString *mynameinit = [[NSString alloc] initWithString:@"my name is %@",name];
        
        
        
        //NSString *str =[[NSString alloc] initWithString:@"hdhh"];
        NSString *str2 =@"strd";
        
        NSString *grade;
        CGFloat  point;
        NSString *num=@"2312dasdasda";
        NSInteger number=-1;
        NSInteger afterNumber;
        grade=[CaculationSubject getGrade:100.0];
        point=[CaculationSubject getPoints:grade];
        
        NSLog(@"학생의 등급은 %@입니다.",grade);
        NSLog(@"학생의 학점은 %f",point);
        
      //  number=[num integerValue];
        //NSLog(@"number : %ld",number);
        
        //[CaculationSubject lastDayOfMonth:number];
        afterNumber=[CaculationSubject absoluteNum:number];
        NSLog(@"%ld",afterNumber);
        
        
        CGFloat roundNum;
        
        roundNum=[CaculationSubject roundNum:3.145];
        
        NSLog(@"%f",roundNum);
        
        
        
        NSString *leap;
        
        leap=[CaculationSubject checkLeapYear:1396];
    
        NSLog(@"%@",leap);
        
    }
    
    

    return 0;
}
