//
//  CaculationSubject.h
//  GradesCaculatorClass
//
//  Created by 진호정 on 2016. 9. 26..
//  Copyright © 2016년 iosSchool. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CaculationSubject : NSObject




@property NSUInteger subjectScore;
@property NSUInteger totalScore;
@property NSInteger subjectCount;

//총점에 점수를 추가하는 메서드
- (void)addScore :(NSInteger)score;

//총점의 평균을 구하는 메서드
- (CGFloat)average;

+ (NSString*)getGrade:(CGFloat)score;

+ (CGFloat)getPoints:(NSString *)grade;

+ (void)scholarShipWithGrade:(NSUInteger)grade;

+ (NSInteger)lastDayOfMonth:(NSInteger)month;


+ (NSInteger)absoluteNum:(NSInteger)number;

+ (CGFloat)roundNum:(CGFloat)roundNum;

+ (NSString *)checkLeapYear:(NSInteger)year;
@end
