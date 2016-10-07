//
//  LikedList.h
//  StackClass
//
//  Created by 진호정 on 2016. 10. 6..
//  Copyright © 2016년 iosSchool. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Node.h"
@interface LikedList : NSObject


@property Node *header;
@property Node *pushPoint;


-(NSString*)push:(NSString*)mark;
-(NSString *)pop;
//-(NSString *)pop:(NSString*)ds;
-(void)printAll;
-(void)braket:(NSString *)formula;
-(NSString *)flagforMark:(NSString *)mark;
@end
