//
//  Animal.h
//  InheritanceClass
//
//  Created by 진호정 on 2016. 9. 22..
//  Copyright © 2016년 iosSchool. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 *@version 0.1
 *@author jinho
 *@brief  this Class collect common animal attribute,behavior
 
 */

@interface Animal : NSObject



@property NSString *name;
@property NSInteger legvValue;
@property NSInteger weight;
@property NSInteger height;


- (id)cry;
- (id)jump;
- (id)eatWhat : (id)food;
- (id)runToWhere : (id)location;

@end
