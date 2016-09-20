//
//  Lord.h
//  CreatObjects
//
//  Created by 진호정 on 2016. 9. 20..
//  Copyright © 2016년 iosSchool. All rights reserved.
//

#import <Foundation/Foundation.h>


/**
 *@version 0.1
 *@author jinho
 *@brief 게임의 사기캐릭터 로드입니다. 모든 능력치가 높습니다.
 
 */
@interface Lord : NSObject




@property id name;
@property id leaderPower;
@property id physicalPower;
@property id magicalPower;
@property id mana;
@property id health;



- (id)storm;
- (id)blackHole;
- (id)soulSteal: (id)someone;



@end
