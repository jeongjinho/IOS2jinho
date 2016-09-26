//
//  CaculationSubject.m
//  GradesCaculatorClass
//
//  Created by 진호정 on 2016. 9. 26..
//  Copyright © 2016년 iosSchool. All rights reserved.
//

#import "CaculationSubject.h"

@implementation CaculationSubject



//객체 초기화
- (instancetype)init
{
    self = [super init];
    if (self) {
        self.totalScore =0;
        self.subjectCount =0;
    }
    return self;
}



- (void)addScore :(NSInteger)score{
// 원래있던 점수에 새로운점수를 더한다.
// 과목카운트를 하나올린다.
    
    self.totalScore = self.totalScore+score;
   self.subjectCount= self.subjectCount+1;
    


}




- (CGFloat)average{


//총점을 과목카운트로 나눈다.
    CGFloat average;
    if(self.subjectCount!=0){
        average = (CGFloat)self.totalScore/self.subjectCount;//소수점은안나옴 NSIteger 라서 캐스팅해야함 이 줄에서만!
    }
    
    return average;



}


+ (NSString*)getGrade:(CGFloat)score{

    NSString *grade;
    if(score>=100.00001){
    
    grade=@"오류";
    
    }
     else if(score>=90.0){
        
        grade=@"A+";
    
    }else if(score>=85.0){
    
        grade=@"A";
    
    }else if(score>=80.0){
    
        grade=@"B+";
    }else if(score>=75.0){
    
        grade =@"B";
    }else if(score>70.0){
    
        grade=@"C+";
    }else if(score>=65.0){
    
        grade=@"C";
        
    }else {
    
        grade=@"F";
    
    }

    return grade;

}


+ (CGFloat)getPoints:(NSString *)grade{


    CGFloat point;
    
    if([grade isEqualToString:@"A+"]){
    
        point =4.5;
    }
    else if([grade isEqualToString:@"A"]){
    
        point=4.0;
    }
    else if([grade isEqualToString:@"B+"]){
    
        point=3.5;
    }
    else if([grade isEqualToString:@"B"]){
    
        point=3.0;
    }
    else if([grade isEqualToString:@"C+"]){
    
        point=2.5;
    }
    else if([grade isEqualToString:@"C"]){
    
        point=2.0;
    
    }
    else if([grade isEqualToString:@"F"]){
    
        point =0.0;
    }
    else if([grade isEqualToString:@"오류"]){
        point =0.0;
    
    }
    return point;
    
}
+ (void)scholarShipWithGrade:(NSUInteger)grade{


    switch (grade) {
        case 1:
            NSLog(@"전액장학금");
            break;
        case 2:
            NSLog(@"50%%장학금");
            break;
        case 3:
            NSLog(@"30%%장학금");
            break;
        case 4:
            NSLog(@"10%%장학금");
            break;
            
        default:
            NSLog(@"장학금없음");
            break;
    }



}

+ (NSInteger)lastDayOfMonth:(NSInteger)month{

    NSInteger lastDay;
    switch (month) {
        
        case 2:
            lastDay=29;
            NSLog(@"%ld달은 %ld",month,lastDay);
            break;
        case 4:
            lastDay=29;
            NSLog(@"%ld달은 %ld",month,lastDay);
            break;
        case 6:
            lastDay=30;
            NSLog(@"%ld달은 %ld",month,lastDay);
            break;
       
        case 9:
            lastDay=29;
            NSLog(@"%ld달은 %ld",month,lastDay);
            break;
        case 11:
            lastDay=30;
            NSLog(@"%ld달은 %ld",month,lastDay);
            break;
        case 12:
            lastDay=30;
            NSLog(@"%ld달은 %ld",month,lastDay);
            break;
            
        default:
            lastDay=31;
            NSLog(@"%ld달은 %ld",month,lastDay);
            break;
    }



    return lastDay;

}

+ (NSInteger)absoluteNum:(NSInteger)number{

    
    if(number<0){
    
        number=number*(-1);
    
        NSLog(@"number :%ld",number);
    
    }
    
    return number;

}






+ (CGFloat)roundNum:(CGFloat)roundNum{

    NSInteger result;
    
    roundNum =roundNum+0.005;
    
    roundNum =roundNum*1000;
    
    result=(NSInteger)roundNum;
    
    roundNum =(CGFloat)result*0.001;
    
    
    return roundNum;

    
    }
    
    


+ (NSString *)checkLeapYear:(NSInteger)year{

    NSString *leap;
    
    if(year%400==0||(year%4==0&& !(year%100==0))){
    
        
        leap=@"윤년";
        
    
    }
    else{
    
    leap=@"윤년아님";
    
    }


    return leap;

}




@end
