//
//  main.m
//  InheritanceClass
//
//  Created by 진호정 on 2016. 9. 22..
//  Copyright © 2016년 iosSchool. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Warrior.h"
#import "Wizzard.h"
#import "Tiger.h"
#import "Person.h"
#import "UniversityStudent.h"
#import "Teacher.h"
#import "Student.h"
#import "Animal.h"
#import "GameCharacter.h"
#import "Animal.h"
/*
 
 상속이란 부모클래스의 속성과 행동들의 물려 받는 것
 기본적으로 자식클래스들의 공통된 속성과 행동들을 뽑아내서 부모클래스를 만든다.
 
 일반적으로 상속받은 클래스는 부모클래스보다 기능이 더 많을 것이라고 예상 할 수 있다.
 
 */
int main(int argc, const char * argv[]) {
   
    //전사 생성
    Warrior *babarian=[[Warrior alloc] init];
    babarian.health =100;
    babarian.mana= 50;
    babarian.physicalPower =150;
    babarian.magicalPower = 50;
    
    
    Wizzard *sourceress = [[Wizzard alloc] init];
    sourceress.health =50;
    sourceress.mana =150;
    sourceress.physicalPower = 50;
    sourceress.magicalPower = 100;
    
    Tiger *horang = [[Tiger alloc] init];
    horang.name =@"호식이";
    [horang cry];
    
    
    //사람클래스 예제
    
    Person *human = [[Person alloc] init];
    human.name=@"정진호";
    NSLog(@"%ld",(long)human.residentNumber);
    
    [human eatWhat:@"갈비살"];
    
    // 학생의 클래스를 상속받은 대학생 예제
    UniversityStudent *zino = [[UniversityStudent alloc] init];
    
    zino.major=@"컴퓨터학부";
    zino.grade = @"4학년";
    [zino goMT];
    
    Teacher *sam =[[Teacher alloc] init];
    
    sam.subject =@"수학";
    sam.name =@"민희";
    
    Student *justStudent =[[Student alloc] init];
    justStudent.name=@"철수";
    
    Student *anotherStudent =[[Student alloc] init];
    anotherStudent.name=@"철수";
    
    
    [sam teach:justStudent];
    [sam teach:anotherStudent];
    
    UniversityStudent *uniStudent =[[UniversityStudent alloc] init];
    uniStudent.name =@"광수";
    
    [sam teach:uniStudent];//되는 이유 스튜덴트 특성을 다가지고 있음 대학생은 나 학생이야
                           //학생은 대학생이아닐수도있어! Person은안됨!!
    
    
    Person *humanoid =[[Person alloc] init];
    humanoid.name =@"정진호";
    
    Tiger *hodol =[[Tiger alloc] init];
    hodol.name =@"호돌이";
    
    
    [humanoid adopt:hodol];
    
    
    
    //전사예제 전사나 마법사 나 게임캐릭터 특성을가지고 있어서 게임캐릭터타입으로 해주면 게임케릭터특성을 상속받은 전사,마법사 둘 다 받을수있다. 상위에꺼는 가지고오지못하고 자기가 상속받은 클래스 이하로 받을 수있다.
    
    Warrior * jinho =[[Warrior alloc] init];
    
    jinho.physicalPower =100;
    
    Wizzard *minhui =[[Wizzard alloc] init];
    
    minhui.health=500;
    
    [jinho physicalAttackTo:minhui];
    
   // Student *mickey =[[Student alloc] init];
    //Student *minny =[[UniversityStudent alloc] init];//하위는 상위로갈수 있으나
    //UniversityStudent *jackey =[[Student alloc] init];//상위는 하위로 생성될 //수 없다.
   
    GameCharacter *jiu =[[GameCharacter alloc] init];
    [jiu physicalAttackTo:minhui];
    
    
    //오버라이드&슈퍼
    
    Animal *animal =[[Animal alloc] init];
    animal.name =@"동물";
    [animal cry];
    
    Tiger *tiger = [[Tiger alloc] init];
    tiger.name=@"호랑이";
    [tiger cry];
    
    
    Person *person = [[Person alloc] init];
    [person eat];
    Student *student = [[Student alloc] init];
    [student eat];
    UniversityStudent *universityStudent =
                                       [[UniversityStudent alloc] init];
    
    [universityStudent eat];
    
    return 0;
}
