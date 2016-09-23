//
//  main.m
//  InitClass
//
//  Created by 진호정 on 2016. 9. 23..
//  Copyright © 2016년 iosSchool. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "View.h"
#import "Phone.h"
#import "App.h"
#import "GalaxyNote.h"
#import "Iphone.h"
//#import "Singer.h"
int main(int argc, const char * argv[]) {
   
    
    Person *person = [[Person alloc] init];
    
    person.name=@"정진호";
    person.age =25;
    person.mobileNumber = @"010-3944-6543";
    person.city = @"서울";
    person.isHandSome =YES;
    
    
    
    Person *rose = [[Person alloc] initWithName:@"로즈" isHandsome:NO];
    
    NSLog(@"rose's name is %@ isHandsom : %d",rose.name,rose.isHandSome);
    
    
    View *view = [[View alloc] initWithWidth:50 WithHeight:30];
    
    //size처럼 init에 값을 넣지안아도 자동적으로 세팅되게 했다면 헤더파일에 주석이나 퀵헬프로 명시해 두는게 좋다.
    NSLog(@"이 도형의 가로는 %ld이고, 세로는 %ld 이다 \n 넓이는%ld입니다.",view.width,view.height,view.size);
    
    
    //Singer *singer = [[Singer alloc] initWithName:@"김흥국" isHandSome:NO magagement:@"드래곤플라이" nickName:@"흥궈신"];
   // NSNumber
    //NSLog(@"이 가수의 이름: %@ 잘생김 : %d 소속사 : %@ 별명 : %@ ",singer.name,singer.isHandSome,singer.management,singer.nickName);
    
    
    
    
    NSLog(@"--------------------------\n");
    
    Phone *phone = [[Phone alloc] initWithDisplayType:@"레티나" cpuSpeed:3.2 ram:2.3 company:@"애플"];
    
    App *app = [[App alloc] initWithName:@"페이스북" volume:300];
    
    
    
    
    
    GalaxyNote *galaxy = [[GalaxyNote alloc] initWithDisplayType:@"아몰레드" cpuSpeed:3.2 ram:4.0 company:@"삼성"];
    
    //[galaxy chargeBattery:100];
    
    Iphone *iphone =[[Iphone alloc] initWithUseEarPodType:YES];
    
    
    [iphone mountEarPod:YES];
    
    [galaxy chargeBattery:100];
    
    
    
    
    
    
    
    return 0;
}
