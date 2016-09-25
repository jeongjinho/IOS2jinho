//
//  ShoppingMallMember.h
//  Week3ShoppingMallProject
//
//  Created by 진호정 on 2016. 9. 25..
//  Copyright © 2016년 iosSchool. All rights reserved.
//



#import <Foundation/Foundation.h>


/**
*@version 0.1
*@author jinho
 
 
 
 */
@interface ShoppingMallMember : NSObject


@property NSString *idName;
@property NSString *name;
@property NSString *idCardNumber;
@property NSString *phoneNumber;
@property NSString *password;
@property NSInteger memberType;



-(instancetype)initWithId :(NSString *) idName name : (NSString *)name password: (NSString *)password  idCardNumber: (NSString *)idCardNumber phoneNumber: (NSString *) phoneNumber;





@end
