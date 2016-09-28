//
//  main.m
//  Example0928
//
//  Created by jakouk on 2016. 9. 28..
//  Copyright © 2016년 jakouk. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DLinkedList.h"
#import "Node.h"

int main(int argc, const char * argv[]) {
    
    DLinkedList *dlink = [[DLinkedList alloc]init];
    
    [dlink addLastValue:1];
    [dlink addLastValue:2];
    [dlink addLastValue:3];
    [dlink addLastValue:4];
    [dlink addLastValue:5];
    
    [dlink printAllNode];
    
    return 0;
}
