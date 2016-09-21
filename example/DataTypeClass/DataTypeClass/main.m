//
//  main.m
//  DataTypeClass
//
//  Created by 진호정 on 2016. 9. 21..
//  Copyright © 2016년 iosSchool. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Warrior.h"
#import "Archer.h"
int main(int argc, const char * argv[]) {
    

    /**
     
       맨처음 자료형을 써주고 변수명을 적는다 .
       bool이나 boolean은 c나c++에서 쓰느것이기에 여기서 는 사용하는 것을 지양한다.
     
    */
     
    BOOL isJinhoHandsome = YES;
    BOOL compareResult =NO;
    //정수형
    
    //부호가 있는 정수타입
    NSInteger signedInteger = -100;
    NSInteger twoHundred = 200;
    
    //부호가없는 정수타입
    NSUInteger unsignedIngeter =-100;
    NSUInteger threeHundred = 300;
    
    
    // 맞다면  YES 또는 NO를 반환합니다.
    //원칙상 타입이 달라도 컴파일러가 바꿔서 해주긴하나  타입이 같아야 하는 것이 맞습니다.
    
    compareResult = (twoHundred < threeHundred);
    
    /*
     
     @100;//[[NSNumber alloc] initWithInt:100]; 같은것 축약이 @100
      객체타입이 아니라면  *를 붙이지 않습니다. ex) alloc해서 쓰는것들
 
    */
    NSNumber *someNumberObject=  @100;//[[NSNumber alloc] initWithInt:100];
    NSNumber *anotherNumberVarialbe =someNumberObject;//  주소값을복사해온다. 그래서 주소로가서 값을바뀐다면 둘다바뀐다.
    
        //vs
    
    NSInteger anotherNumber = twoHundred;//값을 복사해온다.값을복사하기때문에 twohundred가 바뀌어도 anotherNumber는 바뀌지않는다.
    
    twoHundred= 1000;
    
    
    //실수형 타입
    
    CGFloat height =200.3;
    CGFloat weight = 59.5;
    
    //하나의 문자  아스키코드로 값이 들어간다.
    char someCharacter ='a';
    //NSString Class  객체형이기 떄문에 넣을 떄 @  그리고 *변수로붙여서 값이아닌 주소값으로 참조
    NSString *characterArray =@"이것은 객체형 문자열데이터타입 이닷!!!";
    
    
    //id : 아무객체나 다들어오라!!!!!!!
    
    id anyObject = @100;//@빼면 에러
    anyObject = [[NSObject alloc] init];
    
    
    
    
    
    
    

    
    NSLog(@"-------------------------------------------------------------------------------------------");
    
    
    //id가 아닌 각각에 맞는 데이터타입을 적용
    
    
    
    
    
    
    // <#타입#> <#변수이름#> = <#값#>;
    
    Warrior *zino= [[Warrior alloc] init];
    
    zino.name = [[NSString alloc] initWithUTF8String:"정진호"];//@"정진호"
    zino.health =100;
    zino.mana = 200;
    zino.physicalPower = 300;
    zino.magicalPower = 150;
    zino.isDead =NO;
    zino.speed = 50;
    
    
    
    
    Archer *pororo = [[Archer alloc] init];
    
    pororo.name = @"김상구";
    pororo.health = 200;
    pororo.mana = 250;
    pororo.physicalPower = 200;
    pororo.magicalPower = 250;
    pororo.speed = 100;
    pororo.isDead = NO;
    

    /**
     format specifierc-형식지정자
     정수 타입 : 부호가 있는 32bit정수타입 -> 10진수(%d)
     정수 타입 : 부호가 있는 64bit 정수타입 -> 10진수 (%ld) 참고로 NSInteger는 64bit으로 봐도 무방
     
     정수 타입 : 부호가 없는 32bit정수타입 -> 10진수(%u)
     정수 타입 : 부호가 없는 64bit 정수타입 -> 10진수 (%lu)
     
     
     실수 타입 : 32bit 실수 타입(%f)
     실수 타입 : 64bit 실수 타입(%lf) double인데  %d는 있으니깐 %lf
     */
    //정수 예제
    NSLog(@"physicalPoswer : %ld",zino.health);
    
    zino.health  = -1;
    NSLog(@"health : %lu",zino.health);// unsigned 인데  -1이 언더플로우가 발생하여 코드상에 가장큰값으로나옴
    
    zino.health= UINT_MAX+1;// usigned 가장큰값에+1을하면 오버프로우발생해서 0
    NSLog(@"health : %lu",zino.health);
    
    
    //실수 예제
    CGFloat someFloatValue =59.5;
    NSLog(@"float : %lf",someFloatValue);
    
    
    //불리언 0과1로 만 표현되기에  구지 64bit를 쓸 필요가 없다.
    NSLog(@" Bloolean value : %d",YES);
    NSLog(@" Boolean value : %d ",NO);
    
    //%를 표현하고 싶당 할땐 %% 쓴다.
    
    NSLog(@"공격력이 50%%가 증가합니다.");
    
    
    //주소값을 보고싶당
    
    NSLog(@" jinho object  %@  memory address : %p" ,zino,zino);
    
    //정수타입 (16진수)
    
    NSLog(@"physicalPower(16진수) %lx",zino.physicalPower);
    
    //정수타입 (8진수)
    NSLog(@"physicalPower(8진수) : %lo",zino.physicalPower);
    
    //캐릭터타입
    NSLog(@"character : %%%c %c %c",'c','b','c');
    
    //줄바꾸기
    NSLog(@" 줄바꾸기 -> \n");
    //탭
    NSLog(@"탭 -> \t");
    
    //응용
    NSLog(@"zino은 체력은 : %lu 마나는%lu 물리공격력은%ld 이름은 %@",zino.health,zino.mana,zino.physicalPower,zino.name);
    
    //long -> 64bit 부호가 있는 정수타입
    //int  -> 32bit 부호가 있는 정수타입
    //unsigned long
    //unsigned int
    
    NSLog(@"%.2lf",50.22);// %.다음에 숫자가 소숫점을 몆개로 나타내냐는것 6자리까지 할수이쯤
    // %-5ld
    // %-04ld
    // %+3ld
    // %5.2f
    // %-10.3f
    // %10.0f
    
    NSLog(@"-----------------------------------------------------");
    
    //캐릭터치고받고 싸우기 예제
    
    
    
    Warrior *jack = [[Warrior alloc] init];
    
    jack.name =@"디카프리오";
    jack.health = 10000;
    jack.mana = 20;
    jack.physicalPower =100;
    jack.magicalPower =100;
    jack.speed = 50;
    jack.weapon =@"목탁";
    
    Archer *rose = [[Archer alloc] init];
    
    rose.name =@"스칼렛";
    rose.health = 10000;
    rose.mana = 400;
    rose.physicalPower =50;
    rose.magicalPower =400;
    
    rose.speed = 150;
    rose.weapon =@"새총";
    
    
    [jack physicalAttackToEnermy:rose];
    //[rose fireArrow:jack];
    //[jack magicalAttackToEnermy:rose];
    //[jack magicalAttackToEnermy:rose];
        return 0;
}
