//
//  Client.m
//  Week3ShoppingMallProject
//
//  Created by 진호정 on 2016. 9. 25..
//  Copyright © 2016년 iosSchool. All rights reserved.
//

#import "Client.h"

@implementation Client




- (instancetype)initWithId:(NSString *)idName name: (NSString *)name password:(NSString *)password idCardNumber:(NSString *)idCardNumber phoneNumber:(NSString *)phoneNumber  address: (NSString *)address{

    
    self = [self initWithId:idName name:name password:password idCardNumber:idCardNumber phoneNumber:phoneNumber];
    
    self.address = address;
    self.memberType=1;
    




    return self;
}

@end
