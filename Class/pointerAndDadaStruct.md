
### 포인터

 call by reference   즉 , 변수안에 참조하는  주소를 넣어야할 때 에스터리스크(*)를 붙여 사용한다.

---
- 코드

```objectivec
	int main (int argc , const char *argv[])
	// reference example
	NSString *person = [[Person alloc] init];
    
    // value example
    NSInteger num = 13;
	
```

메모리맵으로 표현하면 이렇다.

- 메모리맵
![Alt text](./Presentation1.png)






###구조체

서로 다른 타입의 데이터들이 묶여 있는 구조


- 구조체 vs 클래스

    - 구조체는 할당 시 복사가 된다, 모든 데이터가 복사되므로 복사본을 수정해도 원본은 수정되지 않는다 .(값형식)
<br>
    - 클래스와 달리 alloc 을  사용하지 않고 인스터스화 한다.
    <br>
	- 구조체는 다른구조체나 클래스에 상속될 수 없으며,클래스의 기본 클래스가 될 수도 없다.


`Warning`
```
단 objective-c에서 사용되는 클래스는 구조체 안에서 사용할 수 없다.(ㅁARC영향)

구조체 대신  Class사용하는 것을 지향
```

- 형식
```
 struct  tagName {

	valueType name1;
	valueType name1;
  }

//타입으로 만들고싶다.(하나의 자료형);
 typedef 데이터타입 이름;
 
  //예시
  typedef NSInteger MyInteger;
  @property MyInteger age;
``` 
- 코드 
   ```objectivec
          //.h
        #import <Foundation/Foundation.h>
         typedef struct character{
    
         CGFloat height;
         CGFloat weight;
    
         }character;
  
         @interface Person : NSObject


        @property NSString *name;
        @property NSInteger age;
        @property character info;

        @end


	//.m
	- (void)setHeight:(CGFloat)height weight:(CGFloat)weight{
	- 
	    // _info.height = height;
		//_info.weight = weight;		  
        //값을 넣어서 초기화 
      character tempInfo = {height,weight};
      
     self.info =tempInfo;
}

   ```


<br>
<br><br>
###배열

   인덱스와 인덱스에 대응하는 데이터들로 이루어진 자료구조를 나타낸다.
   일반적으로  배열에는 같은종류의 데이터들이 순차적으로 저장되어 있다.


선언
```
데이터타입 배열이름[배열범위];
//예시
NSInteger intList[5] ={1,2,3,4,5};
CGFloat floatList[10]={3.1,3.2,3.3};
char name[9]="jinho\0";
```

사용

```
name[index];
NSLog(@"%ld",intList[3]);//4출력
NSLog(@"%f",floatList[0]);//3.1출력
NSLog(@"my name is %s",name);//jinho출력

```