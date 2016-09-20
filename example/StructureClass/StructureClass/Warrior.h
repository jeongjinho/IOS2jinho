//
//  Warrior.h
//  StructureClass
//
//  Created by 진호정 on 2016. 9. 19..
//  Copyright © 2016년 iosSchool. All rights reserved.
//

#import <Foundation/Foundation.h>
// 전사에대한 정보
@interface Warrior : NSObject


//속성

@property id name;
@property id level;
@property id strength;
@property id weight;
@property id height;
@property id hp;
@property id mp;



   //앞으로 나아가 공격한다
- (id)stab;
   //도끼를 던져서 상대에 머리에 꼿는다.
- (id)throwAxe;
   //무기를 휘두른다.
- (id)mow;
   //돌진하여 밀친다.
- (id)rush;


@end
