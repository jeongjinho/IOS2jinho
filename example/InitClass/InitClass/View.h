//
//  View.h
//  InitClass
//
//  Created by 진호정 on 2016. 9. 23..
//  Copyright © 2016년 iosSchool. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface View : NSObject


@property NSInteger width;
@property NSInteger height;
@property NSInteger size;
@property NSString *name;



- (instancetype)initWithWidth :(NSInteger)width WithHeight :(NSInteger) height;



@end
