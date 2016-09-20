//
//  Wizard.h
//  CreatObjects
//
//  Created by 진호정 on 2016. 9. 20..
//  Copyright © 2016년 iosSchool. All rights reserved.
//

#import <Foundation/Foundation.h>
// 마법사에 대한  상태와 기능을 나타냄
@interface Wizard : NSObject



//마법사의 체력을나타 냅니다. 다 닳으면 죽습니다.
@property id health;

//마법사의 마나의 양을 나타냅니다. 다 닳으면 마법을 쓰지 못합니다.
@property id mana;

//물리적인 파워 마법 이외에 물리적인 타격을 가할시 무기의 물리데미지 +physiclaPower*30이 됩니다.
@property id physicalPower;

//마법의 파워입니다. 마법공격을 할시 마법공격력*30의 데미지를 입힐 수 있습니다.
@property id magicalPower;

//마법사의 어떤 류의 무기를 쓰는지 나타냅니다.
@property id weapon;




//전방에 적에게 하나의 에너지볼을 날려 데미지를 입힙니다.
- (id)energyball:(id)someone;


- (id)fireAllow;

- (id)iceAllow;

- (id)blizzard;

- (id)heal;

- (id)getItem: (id)item;

- (id)windStorm: (id)to;

- (id)magicalAttack:(id)to;

@end
