//
//  Person.h
//  TypedefStructClass
//
//  Created by 진호정 on 2016. 9. 27..
//  Copyright © 2016년 iosSchool. All rights reserved.
//




#import <Foundation/Foundation.h>
typedef struct character{
    
    CGFloat height;
    CGFloat weight;
    
}character;

@interface Person : NSObject


@property NSString *name;
@property NSInteger age;
@property character info;

- (character)setHeight:(CGFloat)height weight:(CGFloat)weight;
@end


