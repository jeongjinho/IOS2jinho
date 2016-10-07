//
//  main.m
//  StackClass
//
//  Created by 진호정 on 2016. 10. 6..
//  Copyright © 2016년 iosSchool. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LikedList.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        
        
        NSString *mark=@"[{()}]";
        NSString *mark2 = @"232";
        LikedList *linked = [[LikedList alloc] init];
        
        
        [linked push:mark];
        [linked push:mark2];
        [linked printAll];
        [linked pop];
        [linked printAll];
    
        [linked braket:mark];
    
    }
    return 0;
}
