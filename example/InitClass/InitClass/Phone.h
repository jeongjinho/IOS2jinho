//
//  Phone.h
//  InitClass
//
//  Created by 진호정 on 2016. 9. 23..
//  Copyright © 2016년 iosSchool. All rights reserved.
//



#import <Foundation/Foundation.h>
@class  App;
@interface Phone : NSObject

@property NSString  *company;
@property NSString  *displayType;
@property CGFloat   cpuSpeed;
@property NSInteger ram;
@property NSInteger appNumber;
@property NSInteger battery;


- (instancetype)initWithDisplayType:(NSString *)displayType cpuSpeed:(CGFloat)cpuSpeed ram:(CGFloat)ram  company: (NSString*)company;

- (instancetype)init;



- (id)bootOn;
- (id)bootOff;
- (id)callToAnotherPhone :  (NSString *)anotherPhonesNumber;
- (id)installApplication :  (App *)installingApp;
- (id)chargeBattery      :  (NSInteger)wantedBatteryVolume;
//- (id)setWakeUpCall      :  (NSString *)settime;


@end
