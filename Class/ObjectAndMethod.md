# 객체 와 메서드 구현

 ## 객체 생성

 객체를 생성한다는 것은 주기억장치에  있는 클래스를 통해서 객체를 만들어 메모리에 적재하는 것

 형식
   ```
    [<클래스이름> alloc]  = 객체를 클래스이름의 형식으로 할당한다
   ```

 할당과 동시에 초기화


   ```
      [[<클래스이름> alloc] init];
 ```

   이렇게 하고 나면 메모리에 객체가 할당되어서 생성이 되어지고 생성된 곳의 주소가 반환이 된다.

## 변수생성

   생성된 객체를 프로그래머가  지속적으로 사용하려면 변수 또는 상수에 담아두고 있어야 한다.

- 형식
```
<데이터타입> *<변수이름> = <객체의 주소>;
```
 - 코드 예제
 ```objective-c
  Person  *me  =  [[Person alloc] init];
````

## 프로퍼티 접근

   클래스 코드에 정의한 프로퍼티를   프로그래머가 set 하고 get할 수 있는 방법


- set 형식

<생성된객체>.<미리 정의된 프로퍼티> =<넣은 데이터>

- get 코드
```
 NSLog(@“%@ “,<생성된객체>.<미리 정의된 프로퍼티>);
```
## 메서드 정의

   실제적인 동작을 구현하는 것으로 써 헤더파일에 명시되어진 메소드가  어떻게 구체적으로 동작하는지 코드로 구성하는 것이다.

- 코드예제

```objective-c
#import <Foundation/Foundation.h>

/**
 *@version 0.1
 *@discussion 츤데레 성격의 전사
 *힘이 세고 마력은 낮음
 *평균 데미지가 높음
 *@author  jinho
*/
@interface Warrior : NSObject

/// 남들 보다 체력이 높으며 레벌업 시 더 많은 체력이 증가한다.
@property id health;
/// 마법사 보다 마나양이 작으며 레벨업시 마법사보다 적게 증가한다.
@property id mana;

@property id physicalPower;
@property id magicalPower;
@property id weapon;

- (id)rush;
- (id)slaveTheRythm;

@end

#import "Warrior.h"

@implementation Warrior

- (id)rush{

    NSLog(@"돌진하여 상대를 밀어서 5m뒤로 보냅니다.");

    return nil;

}

- (id)slaveTheRythm{

    NSLog(@" 제자리에서 회전하여 가까이 있는 상대에게 150의 피해를 줍니다.");

    return nil;

}

@end
```

헤더파일과구현파일의 메서드 이름과 갯수가 같은 것을 알수 있다.

## 파라미터를 가진 메서드

   때때로 객체가 특정 행위를 수행하려면 부가적인 데이터가 필요하여 파마미터로 데이터를 전달하여
 더 명확하게 메서드를 선언하고 정의 할 수 있다.

- 형식
```
-(<반환타입>)<메서드이름>:(<타입>)(<내부이름>)

code)

- (id)eat;  -> -(id)eat :(id)food;

여러개의 파라미터가 필요할 때
-(<반환타입>)<메서드이름>:(<타입>)(<내부이름>) <외부이름>: (<타입>)<내부이름>….;

code)
- (id)signUpWithUserId:(id)userid password:(id)pw emailAddress:(id)emailAdd phoneNumber: (id)phoneNum;
```
- 파리미터가 있는 메서드 구현

 ```objective-c

   - (id)signUpWithUserId:(id)userid password:(id)pw emailAddress:(id)emailAdd phoneNumber:(id)phoneNum{

    NSLog(@"ID : %@ 비밀번호 : %@ 이메일주소 : %@ 핸드폰번호 : %@ ",userid,pw,emailAdd,phoneNum);

    return nil; 
    }
```

- 구현
  ```objective-c
    [me signUpWithUserId:@"comjenius"
                password:@"날찾지마시오123"
            emailAddress:@"nowlsgh@naver.com"
             phoneNumber:@"01039446345"];
```

---
---
` Honny Tip `
Make QuickHelp
 
/**

*@version  : 버전상태를 쓰는 것
*@author :  만든사람을 명시하는 것
*@brief   :   설명을 쓰는 것
*@return 반환타입 : 반환되는것 명시
*@param  <파라미터>  : 파라미터를 한줄당 하나씩 어떤 쓰임인지 명시

*/

