//
//  Warrior.h
//  InheritanceClass
//
//  Created by 진호정 on 2016. 9. 22..
//  Copyright © 2016년 iosSchool. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GameCharacter.h"
@interface Warrior : GameCharacter // GameCharacter를 상속받아서 GameCharacter의 속성과행동을 사용할 수 있어서  자식클래스에 불필요하게 선언하는 코드를 줄일 수 있다.




- (id)jumpTo :(NSString *)location;
- (id)smashTo : (GameCharacter *)someone;
@end


