//
//  Phone.m
//  InitClass
//
//  Created by 진호정 on 2016. 9. 23..
//  Copyright © 2016년 iosSchool. All rights reserved.
//

#import "Phone.h"
#import "App.h"
@implementation Phone



-(instancetype)init{

    
    self = [super init];
    
    self.company     =@"Unknown";
    self.displayType =@"Unknown";
    self.cpuSpeed = 0.0f;
    self.ram =0.0f;
    self.appNumber=0;
    self.battery=100;
    
    return  self;
}


- (instancetype)initWithDisplayType:(NSString *)displayType cpuSpeed:(CGFloat)cpuSpeed ram:(CGFloat)ram  company: (NSString*)company {

    self = [self init];
    self.company     =  company;
    self.displayType =  displayType;
    self.cpuSpeed    =  cpuSpeed;
    self.ram         =  ram;
    

    return self;
}



//activity Method

- (id)bootOn{

    NSLog(@"전원이 켜집니다.");


    return nil;
}

- (id)bootOff{
    
    NSLog(@"전원이 꺼집니다.");
    
    
    return nil;

}

- (id)callToAnotherPhone :  (NSString *)anotherPhonesNumber{
    
    NSLog(@"%@으로 전화를 통화를 시도합니다.",anotherPhonesNumber);


    return nil;
}



- (id)installApplication :  (App *)installingApp{

    NSLog(@"%@앱을 설치합니다.",installingApp.name);
    

    return nil;
}

- (id)chargeBattery      :  (NSInteger)wantedBatteryVolume{

    NSLog(@"배터리가 %ld로 충전되었습니다.",wantedBatteryVolume);

    
    return nil;
}

@end
