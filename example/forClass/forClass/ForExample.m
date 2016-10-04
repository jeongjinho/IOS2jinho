//
//  ForExample.m
//  forClass
//
//  Created by 진호정 on 2016. 10. 4..
//  Copyright © 2016년 iosSchool. All rights reserved.
//

#import "ForExample.h"

@implementation ForExample


+(void)gogodan:(NSInteger)num{


    NSInteger i=1;
//      포문으로만든것
//    for(i=1;i<=9;i++){
//    
//         NSInteger result=result=num*i;
//            self.total=num*i;
//            
//            NSLog(@" %ld * %ld =%ld",num,i,result);
//        
//    
//    }
    while(i<=9){
    
        NSInteger result=result=num*i;
        
        NSLog(@" %ld * %ld =%ld",num,i,result);

    
        i+=1;
    
    }

}







//팩토리얼

+(void)factorial:(NSInteger)num{

    NSInteger i;
    NSInteger result=0;
    for(i=1;i<=num;i++){
    
        if (result == 0) {
            result = i;
        }else
        {
            result*=i;
        }

    
    }

    NSLog(@"%ld",result);



}


+(void)triagle:(NSInteger)num{
    
    NSInteger i;
    NSInteger result=0;
    for(i=1;i<=num;i++){
        
        if (result == 0) {
            result = i;
        }else
        {
            result+=i;
        }
        
        
    }
    
    NSLog(@"%ld",result);

}



+(void)addAllNum:(NSInteger)num{

    
    
    NSInteger result = 0;
        while(num%10>0){
    
            result= result+num%10;
            num =num/10;
    
        
    }

    NSLog(@"%ld",result);



}


+(void)game369:(NSInteger)num{


    NSMutableArray *arr= [[NSMutableArray alloc]init];

    
    NSInteger i;
    for( i=1;i<=num;i++){
    
    
        if(i%10==3||i%10==6||i%10==9){
        
            
            [arr addObject:@"*"];
        
        
        }else{
        
            if(i%10==0){
                
                [arr addObject:@"*"];

            
            }else{
            
            [arr addObject:[NSNumber numberWithInteger:i]];
            }
            
        
        }
    
        
        
        
    }

    
    
        NSLog(@"%@",arr);
        
    
    

}


@end
