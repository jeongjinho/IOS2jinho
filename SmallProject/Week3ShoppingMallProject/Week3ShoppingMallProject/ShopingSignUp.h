//
//  ShopingSignUp.h
//  Week3ShoppingMallProject
//
//  Created by 진호정 on 2016. 9. 25..
//  Copyright © 2016년 iosSchool. All rights reserved.
//

#import "ShoppingMallMember.h"

@interface ShopingSignUp : ShoppingMallMember

@property NSInteger clientsNumber;

-(NSUInteger)signUp:(NSInteger)signTypeNumber clientsNumber :(NSUInteger)clientsNumber;
@end
