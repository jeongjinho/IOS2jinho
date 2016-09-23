//
//  Singer.m
//  InitClass
//
//  Created by 진호정 on 2016. 9. 23..
//  Copyright © 2016년 iosSchool. All rights reserved.
//

#import "Singer.h"

@implementation Singer






- (instancetype)initWithName:(NSString *)name isHandsome:(BOOL)isHanSome magagement:(NSString *)management nickName:(NSString *)nickName{

     /*상속받은 Person의   initWithName isHandsome 함수를 호출해 중복적인 것을 줄일 수 있다.
     self initWithName is Handsome을 오버라이드 하지않아서 super로 해도된다.
     self  = [super initWithName:name  isHandsome:isHansome]; 지금상태에서는 같은 표현 하지만 이전에 오버라이드를 했다면  super하면 재정의전의 메소드로 self으로 하면 재정의한 메소드로 호출된다.
      
      */
    self = [self initWithName:name isHandsome:isHansome];
    
    //나머지 초기화
    self.management = management;
    self.nickName = nickName;
    



    return self;
}
@end
