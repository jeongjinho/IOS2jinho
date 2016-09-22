# 데이터 타입

데이터 중에는 여러가지 형식의 데이터가 있다.
예를 들면 문자,숫자,여부(Boolean)  숫자는 정수,실수 이렇게 여러가지로 나눌 수 있는데

여기에 맞는 데이터에는 데이터타입 적용 할 수 있어야 한다.

 ` 방식
<자료형> <변수이름>;

##  종류


     정수형
       
       - 부호가 있는 정수타입(NSInteger)
       
          
       
          NSInteger signedInteger =-100 ;
          

      - 부호가 없는 정수타입(NSUInteger)

           
          NSInteger unsignedInteger =-100 ; = error
         NSInteger unsignedInteger =100 ;  = success



    - 실수형(CGFloat)

        objective-c에서는 기본적으로 CGFloat을 기본으로 쓴다.


     
         CGFloat height =200.3;
    CGFloat weight = 59.5;
       

  - 하나의 문자

    하나의 문자를 표현할 때는 character타입을 쓸 수 있다. 또한 문자하나는 아스키코드로 컴퓨터가 읽
    어서 문자대신 숫자를 넣어도 출력할때 해당 아스키코드에 맞는 문자를 출력한다.

          ```objective-c
    
          char someCharacter ='a';
         ``` 

   - 객체형

       여러가지가 있지만 몇가지로 설명하면 데이터타입이 객체로 되어 있다는 말로써  객체를 생성하여
      사용하는 것이다.

        NSString을 예로 들자면    NSString이라는 클래스에서 객체를 만들어 사용하며

       코드를 보자면
       ```objective-c
         NSString *characterArray =@"이것은 객체형 문자열데이터타입  입이다";

       ```
     객체이기때문에  변수앞에 *를 붙여서 참조하는 것을 볼 수있다.
     또한 @는 편하게 객체를생성하고 쓸수있도록하는 것 이지만 원래코드는 = [[NSString alloc] initWithUTF8String]처럼 길게 표현되지만  편리하게 사용하기위해서 @로 줄일 수 있다.


 - Boolean형

     참이라면   YES  거짓이라면 NO를 반환하는 자료형이다.

    원칙상 타입이 달라도 컴파일러가 바꿔서 해주긴하나  타입이 같아야 하는 것이 맞습니다.
     
     ```objective-c
      BOOL compareResult=NO ;
    compareResult = (200 < 300);
     ```
     위에 코드를 보면 처음에는 NO이지만  두번째줄에 맞는 식이 반환되어  YES가 저장된다.

## 형식지정자

    format specifierc-형식지정자
     정수 타입 : 부호가 있는 32bit정수타입 -> 10진수(%d)
     정수 타입 : 부호가 있는 64bit 정수타입 -> 10진수 (%ld) 참고로 NSInteger         는 64bit으로 봐도 무방

     정수 타입 : 부호가 없는 32bit정수타입 -> 10진수(%u)
     정수 타입 : 부호가 없는 64bit 정수타입 -> 10진수 (%lu)


     실수 타입 : 32bit 실수 타입(%f)
     실수 타입 : 64bit 실수 타입(%lf) double인데  %d는 있으니깐 %lf로 씀

- 코드 예



       ``` objective-c
    NSInteger integerValue= 50;
    NSLog(@“NSinteger : %ld”,integerValue);

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
```

-self
  
  자신의 메서드 호출
  
```objective-c
 [self someMethod :value];
```
자신의 프로퍼티로 접근

```objecticve-c
   self.someProperty
```
