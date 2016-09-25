//
//  Manager.h
//  Week3ShoppingMallProject
//
//  Created by 진호정 on 2016. 9. 25..
//  Copyright © 2016년 iosSchool. All rights reserved.
//

#import "ShoppingMallMember.h"

@interface Manager : ShoppingMallMember



@property NSString *companyPassword;


- (instancetype)initWithId:(NSString *)idName name :(NSString *)name password:(NSString *)password idCardNumber:(NSString *)idCardNumber phoneNumber:(NSString *)phoneNumber companyPassword: (NSString *)companyPassword;

@end
