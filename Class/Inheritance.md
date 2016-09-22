# 상속
  
  
   부모의클래스의 속성과 메소드를 물려 받아서  부모의 속성과 메소드를 사용할 수 있는 것으로  코드의 중복성을 줄일 수 있는 장점이 있다.

- 방법

```objective-c
//우리가 자주쓰는  NSObject   또한 가장 상위계층의 클래스이기에 상속을 받아 객체를 사용한다.
   //.h
   @interface Person : NSObject
   
   @property NSString  *name;
    
   - (id)eat;
   
   @end
   
  //.h // Person을 상속한 Student
   #import "Person"
   @interface Student : Person
   
   @property NSInteger grade;
   @end
```
- 구현
```objective-c
#import <Foundation/Foundation.h>
#import "Person.h"
#import "Student.h"

int main(int argc const char *argv[]){

//peson을 생성하여 안에 property에 값을 넣고 메소드 사용가능하다.
   Person *person [[Person alloc] init];
   person.name= @"아무개";
   [person eat];
   
// Student는 Person을 상속받은 Class이기 때문에 Person에 있는 name property와 eat이라는 메소드를 쓸 수있다.  
   Student *student = [[Student alloc] init];
   student.name= "김똥개";
   [student eat];
   
//상속된 것 + 자식클래스에서 추가된 것으로인해서 점점 상속받으면서 기능이 추가될 것이 예상된다. 사람보다는 학생이 좀 더 구체적으로 해야할 것이 있기 때문이다.

   student.grade=3;


return 0;
}
    
```


### warning
  
  만약  메소드에서 매개변수 데이터타입을  Student 타입으로 했다면 
 Student를 포함하여  Student를 상속한 자식클래스를 대신 대입 할 수 있다.

이렇게 생각하면 쉽다. 

---

`Example` 
>1.  Person클래스를 만든다.
>2.  Person 클래스를 상속받아 Student  클래스를 만든다.
>3.  Person 클래스를 상속받아 Teacher 클래스를 만든다.
>4.  Student 클래스를상속받아 UniversityStudent를 만든다. 


`계층`
```

                      NSObject
                          |
                       Person
                       /      \
                 Teacher     Student
                                 |
                         UniversityStudent


```
                                              

```objective-c
//Teacher.h파일에 teach라는 메소드가 선언되었다는 가정.m파일 정의  
   - (id)teach :(Student *)someone{
        
   NSLog(@"%@을 가르칩니다.",someone.name);

}

//main.m에서 구현
  
  int main (int argc,const char *argv[]){
    
   //Teacher Class 로 teacher Object 생성 및 초기화
   Teacher *teacher = [[Teacher alloc] init];
   
   //Student Class 로 student Object 생성 및 초기화
   Student *student = [[Student alloc] init];
     
     student.name=@"김개똥";
    
    //teacher Object의 teach Method 호출
    [teacher teach:student];//  김개똥을 가르칩니다.
    
    
    
     //UniversityStudent Class 로 UniversityStudent Object 생성 및 초기화
    UniversityStudent *university =
                    [[UniversityStudent alloc] init]; 
    universityStudent.name = @"박둘리";
    [teacher teach:university];// 박둘리을 가르칩니다. 
    
    //Person Class 로 person Object 생성 및 초기화
    Person *person [[Person alloc] init];
    person.name=@"홍길동";
    [teacher teach:person];//에러
    
   
return 0;
}
```

왜  person 객체는 teach 메소드에 매개변수로 넣으면 에러 인지 생각해보자.

teah 메소드  매개변수 데이터타입으로 Student 클래스를 주었다. `계층`을 살펴보면  Person 클래스를 기준으로 Student클래스보다 상위계층이고, UniversityStudent 클래스는 하위 계층이다.
 
 >teach 메소드기준으로 Student는 Person이지만 Person은 Student가 아닐 수 있다.

 그렇기 때문에 
### 같은계층과 하위계층의 클래스들은 매개변수로 넣을 수 있지만 상위계층인 Person은 넣을 수 없다.






         

    
 
 
