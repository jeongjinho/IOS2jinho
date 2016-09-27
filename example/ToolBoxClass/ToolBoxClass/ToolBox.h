//
//  ToolBox.h
//  ToolBoxClass
//
//  Created by 진호정 on 2016. 9. 26..
//  Copyright © 2016년 iosSchool. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ToolBox : NSObject




+ (CGFloat)inchToCm:(CGFloat)inch;
+ (CGFloat)cmToInch:(CGFloat)cm;
+ (CGFloat)m2ToAcreage:(CGFloat)m2;
+ (CGFloat)acreageToM2:(CGFloat)acreage;
+ (CGFloat)fahrenheitToCelsius:(CGFloat)fahreheit;
+ (CGFloat)celsiusToFahrenheit:(CGFloat)celsius;
+ (CGFloat)kbToMb:(CGFloat)kb;
+ (CGFloat)mbToKb:(CGFloat)mb;
+ (NSInteger)timeToSec:(NSInteger)time;
+ (NSInteger)secToTime:(NSInteger)sec;
+ (CGFloat)convertCGfloat:(NSInteger)num;
@end
