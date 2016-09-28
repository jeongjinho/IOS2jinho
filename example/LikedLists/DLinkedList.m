//
//  DLinkedList.m
//  Example0928
//
//  Created by jakouk on 2016. 9. 28..
//  Copyright © 2016년 jakouk. All rights reserved.
//

#import "DLinkedList.h"

@implementation DLinkedList

    //초기화
    
    - (instancetype)init
    {
        self = [super init];
        if (self) {
            self.header = [[Node alloc]init];
            self.header.next = nil;
            self.header.preve = nil;
            self.lastIndex = 0;
        }
        return self;
    }
    
    //리스트의 마지막에 추가하는 방법
    //add(마지막에 데이터를 추가한다)
    
    -(void)addLastValue:(NSInteger)value
    {
        [self addLastIndexNode:self.header newValue:value];
    }
    
    -(void)addLastIndexNode:(Node *)nowNode newValue:(NSInteger)value
    {
        //nowNode의 next가 nil이다.
        if(nowNode.next == nil){
            Node * newNode = [[Node alloc]init];
            newNode.value = value;
            newNode.preve = nowNode;
            newNode.next = nil;
            newNode.index = self.lastIndex;
            
            nowNode.next = newNode;
            self.lastIndex = self.lastIndex +1;
            
        }else{
            //nil이 아니다.
            [self addLastIndexNode:nowNode.next newValue:value];
        }
    }
    
    //앞쪽으로 데이터 추가
    -(void)addFirstIndexNode:(NSInteger )newValue
    {
        
        Node * newNode = [[Node alloc]init];
        newNode.value = newValue;
        
        if(self.header.next == nil)
        {
            self.header.next = newNode;
            newNode.preve = self.header;
            newNode.next = nil;
            
            
        }
        else{
            
            newNode.preve = self.header;
            newNode.next = self.header.next;
            
            self.header.next = newNode;
            self.header.next.preve = newNode;
            
        }
        
    }

    //remove(데이터를 삭제한다.)
    
    //removeLast ( 마지막 데이터 삭제 )
    -(void)removeLast
    {
        if(self.header.next == nil){
            
        }
        else{
            
        }
        
    }
    
    //count(총 노드의 갯수룰 구한다 )
    
    //printNode( 모든 노드의 데이터를 출력한다 .)
    -(void)printAllNode
    {
        if(self.header.next == nil)
        {
            NSLog(@"데이터가 없습니다.");
        }
        
        [self printNode:self.header];
        
    }
    
    -(void)printNode:(Node *)node
    {
        if(node.next == nil){
            NSLog(@"%ld ",node.value);
        }else{
            if(self.header != node)
            {
                NSLog(@"%ld ",node.value);
            }
            [self printNode:node.next];
        }
    }
    
    //searchData ( 원하는 데이터를 찾는 로직 )
    
    //printIndex ( 해당 인덱스의 노드의 값을 찾는다. )

    
@end
