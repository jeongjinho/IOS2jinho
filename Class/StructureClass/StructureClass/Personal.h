//
//  Personal.h
//  StructureClass
//
//  Created by 진호정 on 2016. 9. 19..
//  Copyright © 2016년 iosSchool. All rights reserved.
//

#import <Foundation/Foundation.h>// foundation폴더안에있는 .h파일을 import한다.  프레임워크를 쓴다 .


@interface Personal : NSObject
//이 사이에 공개를 할만 한 것들 이 사이에 적는다. 무엇을? 프로퍼티와 메서드
/*
 
  프로퍼티 
   -객체가 가질 수 있는 특징,상태 등의 값  ex)바바리안의 능력치,레벨
 
  메서드
   -객체가 수행할 수 있는 동작 또는 기능 ex)바바리안의 스킬,싸우다,사냥하다,돈을 버리다. 돈을 주머니에 넣다.
 
   >> 프로퍼티정의
     @property <데이터타입> <프로퍼티 이름>;
     id??? 데이터타입 중 가장 최상위
     ex)@property id name;
 
 
   >> 메서드 정의
          - (<반환타입>) <메서드 이름>;
      ex) - (id)methodName;
 */




@property id name;
@property id age;
@property id weight;
@property id height;
@property id bloodType;
@property id visualAcuity;
@property id nation;
@property id gender;
@property id skinColor;
@property id phoneNubmer;
//@property id job; 인간의 본래의 특성이 아니다!

//메소드


- (id)eat;
- (id)sleep;
- (id)wearTheClothes;
- (id)liveWhere;
- (id)run;
- (id)think;
- (id)speak;
- (id)listen;
- (id)ride;





@end
