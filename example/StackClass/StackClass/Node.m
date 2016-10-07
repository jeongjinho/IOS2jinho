//
//  Node.m
//  StackClass
//
//  Created by 진호정 on 2016. 10. 6..
//  Copyright © 2016년 iosSchool. All rights reserved.
//

#import "Node.h"

@implementation Node



-(instancetype)initWithMark:mark{

    self =[super init];
    
    self.mark=mark;
    self.next=nil;
    self.preve=nil;
    return self;

}

@end

