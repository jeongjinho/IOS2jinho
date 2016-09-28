//
//  Person.m
//  TypedefStructClass
//
//  Created by 진호정 on 2016. 9. 27..
//  Copyright © 2016년 iosSchool. All rights reserved.
//

#import "Person.h"

@implementation Person



- (instancetype)initWithName:(NSString*)name{



    self = [super init];
    
    if(self){
    
        self.name=name;
    
    }

    return self;
    



}


- (character)setHeight:(CGFloat)height weight:(CGFloat)weight{



 //   _info.height = height;
//_info.weight = weight;
  
    //값을 넣어서 초기화 
    character tempInfo = {height,weight};
    self.info =tempInfo;
    
    return _info;
}

- (character)personInfo{
    
    return _info;
    
}


@end
