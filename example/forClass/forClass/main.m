//
//  main.m
//  forClass
//
//  Created by 진호정 on 2016. 10. 4..
//  Copyright © 2016년 iosSchool. All rights reserved.
//

#import <Foundation/Foundation.h>
#include "ForExample.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        
        
      //  ForExample *gogodan=[[ForExample alloc] init];
        
        [ForExample gogodan:3];
        [ForExample  factorial:2];
        [ForExample addAllNum:123];
        [ForExample game369:35];
    }
    return 0;
}
