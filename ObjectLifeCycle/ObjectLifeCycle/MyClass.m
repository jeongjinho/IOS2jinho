//
//  MyClass.m
//  ObjectLifeCycle
//
//  Created by 진호정 on 2016. 10. 20..
//  Copyright © 2016년 iosSchool. All rights reserved.
//

#import "MyClass.h"

@implementation MyClass


+(instancetype)alloc{



    NSLog(@"MY class intance alloc");
    return [super alloc];
}

-(void)dealloc{


    NSLog(@"My class instacne dealloc");

}

-(instancetype)init{

     NSLog(@"My class instacne init");
    
    return [super init];

}

@end
