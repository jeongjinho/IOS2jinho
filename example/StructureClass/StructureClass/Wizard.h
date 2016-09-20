//
//  Wizard.h
//  StructureClass
//
//  Created by 진호정 on 2016. 9. 19..
//  Copyright © 2016년 iosSchool. All rights reserved.
//

#import <Foundation/Foundation.h>
//마법사 클래스는 디아블로2의 캐릭터기초클래스 입니다.
@interface Wizard : NSObject

//마법사의 이름
@property id name;
//마법사의 마법을쓸수 있는 양 많아질수록 마법사용횟수가 늘어난다.
@property id mp;
//마법사가 쏠때 파워가 높을수록 데미지가 강해진다.
@property id magicPower;
//마법사의 몸무게 커질수록  좀더 많이 기를 모을 수 있습니다.
@property id weight;





  //마법으로 할퀴어서 상대방에게 두번 대미지를 입힌다.
- (id)magicClo;
  // 에너지를 모아서  전기와 함께 공격한다.
- (id)energyBolt;
  //섬광을 통해서 상대방의 눈을 멀게한다.
- (id)lightningShot;
  //불로된 공을 던져서 초당 마법력+50의 데미지를 입힙니다.
- (id)fireBall;
  //불로된 장벽을 만들어서 상대가 못오게 가로 막습니다.
- (id)fireWall;



@end
