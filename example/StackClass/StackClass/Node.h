//
//  Node.h
//  StackClass
//
//  Created by 진호정 on 2016. 10. 6..
//  Copyright © 2016년 iosSchool. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Node : NSObject


@property NSString *mark;
@property Node *next;
@property Node  *preve;


-(instancetype)initWithMark:mark;
@end
