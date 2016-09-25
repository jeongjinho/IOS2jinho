//
//  ShoppingMallMember.m
//  Week3ShoppingMallProject
//
//  Created by 진호정 on 2016. 9. 25..
//  Copyright © 2016년 iosSchool. All rights reserved.
//

#import "ShoppingMallMember.h"

@implementation ShoppingMallMember



-(instancetype)initWithId :(NSString *) idName name : (NSString *)name password: (NSString *)password  idCardNumber: (NSString *)idCardNumber phoneNumber: (NSString *) phoneNumber{


    self = [super init];
    self.idName =idName;
    self.name =name;
    self.password =password;
    self.idCardNumber =idCardNumber;
    self.phoneNumber  = phoneNumber;
    
    

    return self;


}

@end
