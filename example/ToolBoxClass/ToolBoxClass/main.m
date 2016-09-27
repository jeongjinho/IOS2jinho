//
//  main.m
//  ToolBoxClass
//
//  Created by 진호정 on 2016. 9. 26..
//  Copyright © 2016년 iosSchool. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ToolBox.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        
        [ToolBox inchToCm:3.2];
        [ToolBox timeToSec:11320];
        [ToolBox secToTime:4400];
        
        NSInteger number=12;
        CGFloat floater;
        
   floater = [ToolBox convertCGfloat:number];
        NSLog(@"%.3lf입니다.",floater);
    }
    return 0;
}
