//
//  Singer.h
//  InitClass
//
//  Created by 진호정 on 2016. 9. 23..
//  Copyright © 2016년 iosSchool. All rights reserved.
//

#import "Person.h"

@interface Singer : Person


@property NSString *management;
@property NSString *nickName;



-(instancetype)initWithName :(NSString *)name isHandsome :(BOOL)isHanSome
                 magagement :(NSString *)management nickName :(NSString *)nickName;


@end
