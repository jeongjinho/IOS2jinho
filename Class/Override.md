# 오버라이드   

자식클래스가 부모클래스를 상속받아 사용한다면 부모클래스의 메소드를 가져다  자식클래스의 맞게 재정의 하여서  같은 메소드이름 이지만 자식클래스가 원하는데로 다시 Custermizing 할 수 있다.

- 방법

 ```objective-c
    //Person.h에 eat이라는 메소드를 선언했다는 가정하에 .m파일에 다음과 eat 메소드를 다음과 같이 정의 해보자!
 
    #import "Person.h"
    @implementation Person

    - (id)eat{

		   NSLog(@"사람이  음식을 먹습니다.");
         
         return nil;
	 }
    @end
  //Person 클래스를  상속 받은 Student 클래스에 .m파일에  재정의 해보자!
  //(상속받았기 때문에 따로 .h 파일에 만들필요가 없다.)
//.m
  
   #import "Student.h"

  @implementation Student
	  
	  - (id)eat{
     
     NSLog(@"학생이 급식을 먹고있습니다.");
    
    return nil;
    
 }
  @end


  //main.m에서 구현해보자.
  
  int main(int argc, const char *argv[]){

	  //Person Class로 person 객체 생성 및 초기화
	   
	   Person *person = [[Person alloc] init];
	    
		[person eat] // 사람이  음식을 먹습니다.
        
        //Student Class로  student 객체 생성 및 초기화
        
        Student *student = [[Student alloc] init];
        [student eat]; //학생이 급식을 먹고있습니다.
        
   return 0;
   }
  ```
  이처럼 상속받은 student객체가 상속받은  eat메소드를 재정의 하여서 다르게 동작을 할 수 있게 한다. 

---  



#  `super`

 자식클래스가 eat을 재정의하여 Person 클래스에게 상속받았던  부모클래스 eat도 사용하고싶다면  `super`를 쓰면된다. 

 >super는 부모클래스의 메소드를 호출
 >형식 : [super  <부모의 메서드>];


  
 위에 있는 코드를  다시 활용해보자!


- 코드
 ```objective-c
    #import "Person.h"
    @implementation Person

    - (id)eat{

		   NSLog(@"사람이  음식을 먹습니다.");

       return nil;
	 }
    @end
  ``` 
  Student 클래스에  [super eat]을 추가하자!
  ```objective-c
     #import "Student.h"

    @implementation Student
	  
	  - (id)eat{
	  - 
     [super eat];
     NSLog(@"학생이 급식을 먹고있습니다.");
    
    return nil;
    
 }
  @end
 ```

- 구현
 
 ```objective-c
   int main(int argc, const char *argv[]){

	  //Person Class로 person 객체 생성 및 초기화
	   
	   Person *person = [[Person alloc] init];
	    
		[person eat] // 사람이  음식을 먹습니다.
        
        //Student Class로  student 객체 생성 및 초기화
        
        Student *student = [[Student alloc] init];
        [student eat]; 
          //사람이  음식을 먹습니다.
          //학생이 급식을 먹고있습니다.
          
            
        
   return 0;
   }
  
  ```
  
   //사람이  음식을 먹습니다.  <- super(부모객체인 Person) eat메소드를 호출
  //학생이 급식을 먹고있습니다. <-재정의한 eat을 호출

