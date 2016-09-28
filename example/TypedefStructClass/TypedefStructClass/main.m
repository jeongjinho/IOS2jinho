//
//  main.m
//  TypedefStructClass
//
//  Created by 진호정 on 2016. 9. 27..
//  Copyright © 2016년 iosSchool. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        
        
        
        Person *person = [[Person alloc] init];
        
        character temp;
       temp= [person setHeight:30.0 weight:40.0];
        
        NSLog(@"%lf%lf",temp.height,temp.weight);

    
        temp.height= person.info.height;
    }
    return 0;
}
