//
//  main.m
//  CreatObjects
//
//  Created by 진호정 on 2016. 9. 20..
//  Copyright © 2016년 iosSchool. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Lord.h"
#import "Person.h"
#import "Wizard.h"//클래스의 정보를 가져오겠습니다.
#import "Warrior.h"
int main(int argc, const char * argv[]) {
   
    
    
    /*객체생성
      
     [<클래스이름> alloc];
     
     객체를 클래스이름의 형식으로 할당한다
     
     초기화 [<클래스이름> init];
     
     = [[<클래스이름> alloc] init];
      실행되면 저장된 곳의  주소값을 반환한다.
     
     변수생성
     
     <데이터타입> *<변수이름> = <객체의 주소 >;
    */
    
    
    //Pesonal 클래스타입으로 할당후 초기화 한 후  메모리의 주소가나오는데  주소를 Person타입에 me위치로 넣기위해서 *를 붙여 주소를 집어넣는다.
    
    //사람클래스의 객체 생성 및 초기화
    Person  *me  =  [[Person alloc] init];
    me.name = @"정진호";// set: 값을 넣는다  ex) me.name =@"정진호";

    me.age = @"25";
    me.gender = @"남자";
    Person  *donoban = [[Person alloc] init];
    donoban.name = @"도노반";
    donoban.age = @"30";
    donoban.gender = @"남성";
    
    Person  *messi = [[Person alloc] init];
    messi.name = @"메시";
    messi.age =  @"30";
    messi.gender = @"여자";
    //전사클래스의 객체 생성 및 초기화
    Warrior *jinho = [[Warrior alloc] init];
    jinho.health = @"500";
    jinho.mana = @"200";
    jinho.physicalPower = @"500";
    jinho.magicalPower = @"300";
    jinho.weapon = @"장검";
    
    Warrior *jackson = [[Warrior alloc] init];
    jackson.health = @"300";
    jackson.mana = @"150";
    jackson.physicalPower = @"500";
    jackson.magicalPower = @"300";
    jackson.weapon = @"왕푸";
    
    Warrior *xavi = [[Warrior alloc] init];
    xavi.health = @"250";
    xavi.mana =  @"100";
    xavi.physicalPower = @"500";
    xavi.magicalPower = @"100";
    xavi.weapon = @"캄푸검";
    
    //마법사클래스의 객체 생성 및 초기화
    Wizard  *jack = [[Wizard alloc] init];
    jack.health = @"100";
    jack.mana = @"500";
    jack.physicalPower = @"100";
    jack.magicalPower = @"400";
    jack.weapon = @"현자의 지팡이";
    
    Wizard  *pororo = [[Wizard alloc] init];
    pororo.health = @"200";
    pororo.mana = @"400";
    pororo.physicalPower = @"200";
    pororo.magicalPower = @"400";
    pororo.weapon = @"대나무지팡이";
    
    
    
    
    
    /*프로퍼티 접근
     
     객체가 되었을 떄 가지는 상태값을 set하고 get
     
     
     get : 값을 가져온다. ex) NSLog(@"My name is %@",me.name);
     
     */
    
    

    //get  연습
    NSLog(@"my name is %@",me.name);//get
    NSLog(@"my age is %@",me.age);
    NSLog(@"my gender is %@",me.gender);
    
    
    
    NSLog(@"my health is %@",xavi.health);
    NSLog(@"my mana is %@",xavi.mana);
    NSLog(@"my physicalPower is %@",xavi.physicalPower);
    NSLog(@"my magicPower is %@",xavi.magicalPower);
    NSLog(@"my weapon is %@",xavi.weapon);
    
    
    
    NSLog(@"my health is %@",pororo.health);
    NSLog(@"my mana is %@",pororo.mana);
    NSLog(@"my physicalPower %@",pororo.physicalPower);
    NSLog(@"my magicPower is %@",pororo.magicalPower);
    NSLog(@"my weapon is %@",pororo.weapon);
    
    
    
    NSLog(@"------------");
    
    //get set    연습
    me.name = @"지노쓰"; //set
    
    donoban.name =me.name;//get 해서 set하는 것
    NSLog(@"donoban name is changed %@",donoban.name);
    
    
    //메소드연습
    NSLog(@"전사와 마법사의 싸움");
    
    NSLog(@"-------------------------------");
    
    //메서드 호출
    //객체가 행위를 수행하도록 메서드를 실행
    //[me talk];
    
    
    [me run];
    [jack blizzard];
    [jinho slaveTheRythm];
    [pororo iceAllow];
    [pororo fireAllow];
    [jack fireAllow];
    [jackson pushAxe];
   
    
    
    /*매개변수
      사람이 ~~을 먹는다  처럼 부가적인 정보를 보내는 것
      
     매개변수가 추가된 메서드  -(<반환타입>)<메서드이름>:(<타입>)(<내부이름>)
     
     ex) - (id)eat;  -> -(id)eat :(id)food;
     
     메서드호출
       
     [me eat:@"사과"];
     */
     [me eat:@"소고기"];
    [pororo getItem:@"녹슨단검"];
    [me pushTo:messi.name];
    [pororo energyball:jinho.health];
    
    
    //매개변수가 여러개일때 호출
    
    [me talkTo:messi.name where: @"부산"];
    
    
    [me love:@"아름다운 여자" when:@"10월" where:@"서울"];
    
    
    
    NSLog(@"--------------- meme");
    
    [me think:@"하늘을나는것"];
    [me study:@"음악"];
    [me drink:@"콤비콜라"];
    [me smell:@"옆사람에게 나는 스컹크냄새"];
    
    [me signUpWithUserId:@"comjenius"
                password:@"날찾지마시오123"
            emailAddress:@"nowlsgh@naver.com"
             phoneNumber:@"01039446345"];
    
    [jack magicalAttack:@"탕수육 혼자 다 먹는 사람"];
    [jack windStorm:@"다 만들어 놓은 눈사람 부시는 사람"];
    [jackson dropTheTray:@"국민MC 유재석"];
    
    
    [jack magicalAttack:jackson];
    [jackson callToMother:jack];
    [jackson dropTheTray:jack];
    [jackson realSoccerKick:jack];
    [jack heal];
    
    
    
    
    
    NSLog(@"로드 예제 ");
    
    //셍성
    Lord *zino = [[Lord alloc] init];
    
    //set
    zino.health =@10000;
    zino.mana = @10000;
    zino.leaderPower = @10000;
    zino.physicalPower = @10000;
    zino.magicalPower = @10000;
    
    
    //get
    
    NSLog( @"get %@ %@",zino.health,zino.magicalPower);
    
    //메소드 호출
    
    [zino storm];
    [zino soulSteal:me];
    [zino blackHole];
    
    
    return 0;
}
