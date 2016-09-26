//
//  IfPracticeClass.m
//  ToolBoxClass
//
//  Created by 진호정 on 2016. 9. 26..
//  Copyright © 2016년 iosSchool. All rights reserved.
//

#import "IfPracticeClass.h"

@implementation IfPracticeClass


+ (BOOL)isEvenNumber:(NSInteger)number{

    BOOL isEven=NO;
    
    if((number%2)==0){
    
         isEven=YES;
        //return YES;
    }
    else{
    
        isEven=NO;
       // return NO;우리는 elseif라면  return값도해줘야한다. 그래서 걍리턴으로 하면 두가지경우에서 다예외처리가되야함  컴퓨터는 elseif다음에  그렇다면 그것아니라면 이라고생각한다. 우리는 이외에 것이 없다는 것을 알지만!
    }

   return isEven;
}



@end
