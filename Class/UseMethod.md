#메소드사용법

###  import VS @class
```
import는  메서드나 프로퍼티에 접근할 때쓰는 것

@class는 해당 클래스의 존재를 알려주는 것
```
만약 헤더파일에서 Pet.h에  #import  "Person.h"을 선언하고 

Person .h에 #import  "Pet.h"를  한다면  Person에서  Pet.h를
가져오는데 거기엔 자기자신의 .h까지 다시 import하게 되므로
 
 결국 둘중하나에서 에러가 날 수 밖에 없다.<br>
이럴경우는 @class를 선언해서 명시만 해주면 문제가 해결된다.
다만 @class 는 메서드나 생성이 안되므로 .m파일에서는  #import
를 다시 해줘야 한다.



###메소드의 중복사용

```objectivec
   #import <Foundation/Foundation.h>
   #import "Car.h"
	int main(int argc ,const char *argv[]){

	//이렇게 객체를생성하고 그 다음 생성된 객체를 초기화시킨다.	
	//Car *tico [Car alloc];
	// tico = [tico init];
	
    //이렇게 메서드안에서 다시 메서드를 호출 할 수있다.
	Car *tico =[[Car  alloc] init];
	 	
		return 0;
	}
```


이렇게 바로 메서드에서 나온 값을 다른 메서드의 매개변수로 
바로 집어넣어 메서드를 중복으로 호출 할 수 있다.


###클래스메서드

인스턴스 속성의 상관없이 클래스 자체에 필요한 행위를 정의 할때 
사용한다.

선언코드
```objectivec
  //Person.h
 // 앞에 -가 아닌 + 
 //매개변수로 넣은 것으로만 연산을 하여 값을 만드는 것 즉,
 //프로퍼티에 대한접근과 객체에 대한접근을 하지 못한다는 것
+(NSInteger)addScore:(NSInteger)score;
```

호출코드
```objectivec
	NSInteger =score;
	score=[Person addScore:100];
```
* [클래스이름 메시지:매개변수]로 된다.

###조건문

함수내부에서 실행되는 선택문
특정 조건에 따라 선택적으로 코드를 실행시킨다.
대표적인 조건문으로 `if-else` 와 `swith-case`가 있다.

* 유형-1
```
if(조건){
 //조건이 만족되면 실행
}
else{

//조건이 만족되지 않을때 실행
}
```
조건은 BOOL값으로 표현된다.

* 유형-2
```
if(조건){
 //조건이 만족되면 실행
}
else if(조건2){

	//조건1이 만족되지 않았을 때 실행

}else{


//조건이 만족되지 않을때 실행
}
```
`논리연산자`
```
&& :  A조건&&B조건 ->A,B조건 둘다 참일때 조건 만족
  | |  :  A조건 | | B 조건 -> 둘 중 하나만 참일때도 만족
  !      : !(A조건 | |B조건) -> 조건의 대한 반대  참이라면 거짓,거짓이라면 참
```

###switch문

상태에 따라  실행될 코드를 선택하는 조건문


```objectivec
//달마다 마지막 일수를 구하는 메서드 예시
+ (NSInteger)lastDayOfMonth:(NSInteger)month{

    NSInteger lastDay;
    //switch에는 정수가 들어가야한다.
    switch (month) {
        
        case 2:
            lastDay=29;
            NSLog(@"%ld달은 %ld",month,lastDay);
            break;//조건을 만난다면 break로 빠져나온다.
        case 4:
            lastDay=29;
            NSLog(@"%ld달은 %ld",month,lastDay);
            break;
        case 6:
            lastDay=30;
            NSLog(@"%ld달은 %ld",month,lastDay);
            break;
       
        case 9:
            lastDay=29;
            NSLog(@"%ld달은 %ld",month,lastDay);
            break;
        case 11:
            lastDay=30;
            NSLog(@"%ld달은 %ld",month,lastDay);
            break;
        case 12:
            lastDay=30;
            NSLog(@"%ld달은 %ld",month,lastDay);
            break;
            
        default:
            lastDay=31;
            NSLog(@"%ld달은 %ld",month,lastDay);
            break;
    }



    return lastDay;

}

```
switch문을 쓸때는  코드가 길어지면 간혹 break를 빼먹을 수 있으니 `조심`!!


