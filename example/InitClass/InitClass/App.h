//
//  App.h
//  InitClass
//
//  Created by 진호정 on 2016. 9. 23..
//  Copyright © 2016년 iosSchool. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface App : NSObject


@property NSString  *name;
@property NSInteger volume;



- (instancetype) init;
- (instancetype) initWithName:(NSString *) name volume :(NSInteger)volume;


@end
