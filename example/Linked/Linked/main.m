//
//  main.m
//  Linked
//
//  Created by 진호정 on 2016. 9. 28..
//  Copyright © 2016년 iosSchool. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DLinkedList.h"
int main(int argc, const char * argv[]) {
    
    DLinkedList *dlink = [[DLinkedList alloc]init];
    
    [dlink addLastValue:1];
    [dlink addLastValue:2];
    [dlink addLastValue:3];
    [dlink addLastValue:4];
    [dlink addLastValue:5];
    [dlink addLastIndexNode:dlink.header newValue:6];
    [dlink addLastIndexNode:dlink.header newValue:7];
    [dlink addLastIndexNode:dlink.header newValue:8];
    [dlink addLastIndexNode:dlink.header newValue:9];
    [dlink addLastIndexNode:dlink.header newValue:10];
    [dlink printAllNode];
    NSLog(@"------------------");
    [dlink removeLast];
    [dlink printAllNode];
    
    return 0;
}

