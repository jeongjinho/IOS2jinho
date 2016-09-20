//
//  Person.h
//  CreatObjects
//
//  Created by 진호정 on 2016. 9. 20..
//  Copyright © 2016년 iosSchool. All rights reserved.
//

#import <Foundation/Foundation.h>


/**
 *@version : 0.1
 *@desc 사람을 나타내는 클래스입니다.
 */
@interface Person : NSObject


/// 사람 이름을 나타냅니다.
@property id name;
@property id age;
@property id gender;

//세줄은 퀵헬프하나를 만드는 것


- (id)run;
- (id)talk;
/**
 *@version : 0.1
 *@장소와 대상을 입력하면  대상이 입력했다는 문장을 출력합니다.
 *@param  someone 대화할 대상
 *@param  location 어디서 대화할지에 대한 장소
 *@author jinho
 *@return 나중에 배울 예정
 *@brief 이것은 무엇인가..?<#discription#>
 */
- (id)talkTo:(id)someone where:(id)location;//여러개의 매개변수를할때 메소드이름은 talkTo where라는 이름
/**
 *@version 0.1
 *@param who 사랑을 하게 될 대상
 *@param date 사랑을 시작하는 시기
 *@param location 사랑을 하는 지역
 *@author jinho
 *@return id는 나중에
 *@brief 사랑을 시작하는 함수
 */
- (id)love:(id)who when:(id)date where:(id)location;
/**
 *@brief 상대방에게 미는 함수
 
 
 */
- (id)pushTo:(id)someone;
- (id)eat:(id)food;
- (id)think:(id)what;
- (id)drink:(id)what;
- (id)make :(id)something;
- (id)study : (id)subject;
- (id)smell : (id)something;

//매개변수가 애매할 떄 앞에 with로 연결해서 할 수있다.
- (id)signUpWithUserId:(id)userid password:(id)pw emailAddress:(id)emailAdd phoneNumber: (id)phoneNum;

@end
