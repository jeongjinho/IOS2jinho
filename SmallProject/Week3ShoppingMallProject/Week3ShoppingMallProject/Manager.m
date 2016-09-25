//
//  Manager.m
//  Week3ShoppingMallProject
//
//  Created by 진호정 on 2016. 9. 25..
//  Copyright © 2016년 iosSchool. All rights reserved.
//

#import "Manager.h"

@implementation Manager




- (instancetype)initWithId:(NSString *)idName name :(NSString *)name password:(NSString *)password idCardNumber:(NSString *)idCardNumber phoneNumber:(NSString *)phoneNumber companyPassword: (NSString *)companyPassword{
    
    
    
    
    self =[super initWithId:idName name:name password:password idCardNumber:idCardNumber phoneNumber:phoneNumber];
    
    self.companyPassword =companyPassword;
    self.memberType=2;
    

    

    return self;

}
@end
