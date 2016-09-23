//
//  Person.m
//  InitClass
//
//  Created by 진호정 on 2016. 9. 23..
//  Copyright © 2016년 iosSchool. All rights reserved.
//

#import "Person.h"

@implementation Person


- (instancetype)initWithName :(NSString * )name isHandsome :(BOOL)isHandSome  {
    self = [super init];
    
    //self = [self init];//오버라이드 안했기때문에 똑같음
    
    
    self.name =name;
    self.isHandSome =isHandSome;
    
    
    return self;

}

@end
