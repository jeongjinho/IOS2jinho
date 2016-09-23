# 초기화 메서드

  객체를 생성한 후 곧바로 객체를 사용할 수 있도록 초기화 해줄 수 있는 메서드

초기화 메서드는 마지막에 return self를 하게됨

선언방법
> -(instancetype)intWith<초기화와 동시에 넣을 첫번째 프로퍼티이름>:
> (<데이터타입>)프로퍼티이름 

이렇게 property에서 선언한것들에서 원하는  property만  위에 방법대로 선언하면  해당프로퍼티의 값을 원하는대로 초기화와 동시에  생성을 할 수 있도록 해준다.


 - 코드
   ``` objective-c
     person.h

    #import <Foundation/Foundation.h>

     @interface Person : NSObject



    @property NSString *name;
    @property BOOL 	 isHandSome;
    
      //initWith로 시작 :무엇과 함께 초기화 할것인가

     -(instancetype)initWithName:(NSString * )name 
       isHandSome:   (BOOL)isHandSome;
       
       //다른 property의 조합으로도 만들 수 있다.
     -(instancetype)initWithName :(NSString *)name city :(NSString *)city;
 
    @end

    person.m
    
     #import "Person.h"

   @implementation Person


    -(instancetype)initWithName :(NSString * )name isHandsome :  
     (BOOL)isHandSome  {
     // 이것을 안하면 name,isHandSome이외에는 쓰레기값들이 들어가지기 때문에  먼저  상속받은 부모클래스의 init으로 초기화를 한다.
     self = [super init];
    
      //self = [self init];//오버라이드 안했기때문에 똑같음
    
    
     self.name =name;
     self.isHandSome =isHandSome;
    
    //돌려줄때  초기화된 자기자신을 돌려준다.
     return self;

     }

   @end

    ```
   코드를 설명해보자면    person은 NSObject 를 상속 받았다.
   그렇다면 Persond을 init 하여 초기화 한다면  NSObject에서 init메소드를 정의   한대로 생성될 것이다.
   
  그 다음 person의 property 값을 집어 넣을 수 있다.
  하지만 위에코드처럼  초기화메서드를 만들어서 사용하면 name,isHandSome은 
 객체와 동시에 값을 초기화 시킬 수 있다.

 구현을 통해서 어떻게 되는지 보자!

 - 구현
 
 ```objective-c
    #import <Foundation/Foundation.h>    
    #import "Person.h"

    int main(int argc , const char*argv[]){
    
     //생성하고 그다음 값을 넣는방식;
     Person *person = [[Person alloc] init];
    
     person.name=@"정진호";
     person.age =25;
     person.mobileNumber = @"010-3944-6543";
     person.city = @"서울";
     person.isHandSome =YES;
    
    //이렇게 로즈라는와 NO로 정하여 생성과 동시에 초기화를 할 수 있다.
     Person *rose = [[Person alloc] initWithName:@"로즈" isHandsome:NO];
    
    NSLog(@"rose's name is %@ isHandsome : %d", rose.name,rose.isHandSome);
                                                                    


    return 0;
   }
  ```
  
또한 init메서드 자체를 변경시킬 수도 있다!
```objective-c
    -(instancetype)init{
    
    self = [super init];
    self.company     =@"Unknown";
    self.displayType =@"Unknown";
    self.cpuSpeed = 0.0f;
    self.ram =0.0f;
    self.appNumber=0;
    self.battery=100;
    
    return  self;
    }
  ```
  
이렇게 하면 우리가 위에서 정해준 값들이 들어가서 초기화를 진행한다.

또한 상속받은 객체가 초기화메소드안에서 자기가 정의해놓은 다른 초기화메서드나 부모클래스의 초기화메서드를  호출하여 사용 할 수 있다.











     

