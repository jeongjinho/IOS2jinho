//
//  LikedList.m
//  StackClass
//
//  Created by 진호정 on 2016. 10. 6..
//  Copyright © 2016년 iosSchool. All rights reserved.
//

#import "LikedList.h"

@implementation LikedList



- (instancetype)init
{
    self = [super init];
    if (self) {
        self.header = [[Node alloc]init];
        self.header.next = nil;
        self.pushPoint=self.header;
    }
    return self;
}





-(NSString*)push:(NSString*)mark{

    //값을 노드로만든다.
    
    Node *node=[[Node alloc] initWithMark:mark];
    
   // NSLog(@"%@",node.mark);
    
    //헤더의 next= nil이라면 next에 추가한다.
    
    if(self.header.next==nil){
    
        self.header.next=node;
        node.preve=self.header;
        self.pushPoint=self.header.next;
        
        
      //  NSLog(@"%@",self.header.next.mark);
    
    }else{
    //아니라면  마지막 노드의 next에 노드를 연결한다.
    
    self.pushPoint.next=node;
        node.preve=self.pushPoint;
    self.pushPoint=node;
    
        
    }
    //NSLog(@"%@이 들어갔습니다.",self.pushPoint.mark);

    return self.pushPoint.mark;
}


-(NSString *)pop{
    
    NSString *temp=self.pushPoint.mark;
    
    //뺄것이없다면
    if(self.header.next==nil){
    
     
        
    }
    //뺄것이있따면
    else{
        
        //마지막이전의 노드를 저장
        Node *lastNode=self.pushPoint.preve;
        //마지막에서 전노드의 next를 nil시킨다.
        lastNode.next=nil;
        //마지막노드의 preve를 해서 전에 노드와 관계를 완전히 끊어버린다.
        self.pushPoint.preve=nil;
        //마지막노드를 전에노드로 설정한다.
        self.pushPoint=lastNode;
    
    }
    
    return temp;

}


-(void)braket:(NSString *)formula{

   // NSMutableArray *marks;
    //문자열을 하나하나 어레이에 집어넣는다.
    
    
    
    NSMutableArray *array =[NSMutableArray array];
    for(NSInteger i=0;i<[formula length];i++){
    
        NSString *ch=[formula substringWithRange:NSMakeRange(i, 1)];
        [array addObject:ch];
    
    }
    
    
    NSString *mark;
    NSInteger i=0;
    //배열을 하나씩돌린다.
    for(i=0;i<[formula length];i++){
    
        if([array[i] isEqualToString:@"["]||[array[i] isEqualToString:@"{"]||[array[i] isEqualToString:@"("]){
        [self push:array[i]];
        
        }
        
        else if([array[i] isEqualToString:@"]"]||[array[i] isEqualToString:@"}"]||[array[i] isEqualToString:@")"]) {
        
            NSString *temp;
           mark= [self pop];
            
           temp= [self flagforMark:mark];
            
            NSLog(@"%@",array[i]);
            if([array[i] isEqualToString:temp]){
            
                NSLog(@"같음");
                
            }
            else{
            
                NSLog(@"같지않음");
            
            
            }
        
        
        
        }
        
        
    }
            
            
        
            
    
    

}



-(void)printAll{

    Node *node=self.header.next;
    
    if(self.header.next==nil){
    
        NSLog(@"값이없다");
    
    }
    while(node!=nil){
    
    
        NSLog(@"%@",node.mark);
        
        node=node.next;
    
    }
}


-(NSString *)flagforMark:(NSString *)mark{
    
    NSString *flag;
    if([mark isEqualToString:@"["]){
    
          flag=@"]";
    
    }
   else if([mark isEqualToString:@"{"]){
        
         flag=@"}";
        
    }
   else if([mark isEqualToString:@"("]){
        
         flag=@")";
        
    }
    
    return flag;
}

@end
