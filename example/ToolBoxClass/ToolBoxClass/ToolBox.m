//
//  ToolBox.m
//  ToolBoxClass
//
//  Created by 진호정 on 2016. 9. 26..
//  Copyright © 2016년 iosSchool. All rights reserved.
//

#import "ToolBox.h"

@implementation ToolBox



//인치를 센치로 바꾸는 메서드

+ (CGFloat)inchToCm:(CGFloat)inch{

    CGFloat cm=inch*2.54;
    
    NSLog(@"%f inch는 %fcm입니다.",inch,cm);
    
    return cm;
}
//센치를 인치로 변환메서드
+ (CGFloat)cmToInch:(CGFloat)cm{

    CGFloat inch=cm*0.393701;
    NSLog(@"%f cm는 %f inch입니다.",cm,inch);
    
    return inch;
}

//미터제곱을 평수로 변환메서드
+ (CGFloat)m2ToAcreage:(CGFloat)m2{

    
    CGFloat acreage=m2*0.3025;
    NSLog(@"%f미터제곱은 %f평 입니다.",m2,acreage);
    return acreage;
}
//평수를 미터제곱으로 변환메서드
+ (CGFloat)acreageToM2:(CGFloat)acreage{

    CGFloat m2=acreage*3.305785;
    NSLog(@"%f acreage는 %f 미터제곱입니다.",acreage,m2);
    return m2;

}
//화씨를 섭씨로 변환하는 메서드
+ (CGFloat)fahrenheitToCelsius:(CGFloat)fahrenheit{

    CGFloat celsius=fahrenheit*-17.222222;
    NSLog(@"화씨%f는 섭씨%f입니다.",fahrenheit,celsius);
    return celsius;


}
//섭씨를 화씨로 변환하는 메서드
+ (CGFloat)celsiusToFahrenheit:(CGFloat)celsius{
    
    CGFloat fahrenheit=celsius*33.8;
    NSLog(@"섭씨%f는 화씨%f입니다.",celsius,fahrenheit);


    return fahrenheit;
    


}
//kb를 mb로 변환하는 메서드
+ (CGFloat)kbToMb:(CGFloat)kb{
    
    CGFloat mb=kb*0.000977;
    
    NSLog(@"%fkb는 %fmb입니다.",kb,mb);
    return kb;
}
//mb를 kb로 변환하는 메서드
+ (CGFloat)mbToKb:(CGFloat)mb{

    CGFloat kb=mb*1.024;
   NSLog(@"%fmb는 %fkb입니다.",mb,kb);
    return kb;
}

+ (NSInteger)timeToSec:(NSInteger)time{
    NSInteger remainer;
    NSInteger sec=(time/10000)*3600;
    
    remainer=time%10000;
    
    sec =sec+(remainer/100)*60;
    
    remainer=remainer%100;
    
   sec=sec+remainer;
    
    NSLog(@"%ld",sec);
    return sec;


}
+ (NSInteger)secToTime:(NSInteger)sec{

    NSInteger time=(sec/3600)*10000;
    NSInteger remainer=sec%3600;
    
    time= time+((remainer/60)*100);
    
    remainer =remainer%60;
    
    time=time+remainer;
    
    NSLog(@"%ld",time);

    return time;

    
}
@end
