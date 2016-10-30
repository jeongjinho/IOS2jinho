//
//  main.m
//  ObjectLifeCycle
//
//  Created by 진호정 on 2016. 10. 20..
//  Copyright © 2016년 iosSchool. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MyClass.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
       
        
        MyClass *myClass = [[MyClass alloc]init];
        
        NSLog(@"%@",myClass);
        myClass=nil;
        NSLog(@"ENd");
    }
    return 0;
}
