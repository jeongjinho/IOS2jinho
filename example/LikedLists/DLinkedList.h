//
//  DLinkedList.h
//  Example0928
//
//  Created by jakouk on 2016. 9. 28..
//  Copyright © 2016년 jakouk. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Node.h"

@interface DLinkedList : NSObject
    
    @property Node *header;
    @property NSInteger length;
    @property NSInteger lastIndex;
    
    -(void)addLastIndex:(NSInteger)value;
    -(void)addFirstIndexNode:(NSInteger )newValue;
    -(void)addLastValue:(NSInteger)value;
    -(void)printAllNode;
@end
