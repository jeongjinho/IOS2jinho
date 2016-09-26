//
//  main.m
//  Week3ShoppingMallProject
//
//  Created by 진호정 on 2016. 9. 25..
//  Copyright © 2016년 iosSchool. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Client.h"
#import "Manager.h"
#import "ShopingSignUp.h"
int main(int argc, const char * argv[]) {
    
    int menuNumber=0;
    
    while(menuNumber!=5){
        
        
        NSInteger clientsNumber;
    NSLog(@"\t쇼핑몰입니다.\n---------------------\n\t1. 회원가입\n       5. 종료");
        menuNumber=0;
    scanf("%d",&menuNumber);
    
    //system( "clear" );
        NSLog(@"dsds");
   // Client *members[32];
    
    
    
    switch (menuNumber) {
        case 1:
            
            NSLog(@"\t회원가입 유형을 선택해 주세요!.\n---------------------\n\t1. 일반회원가입\n\t2. 관리자회원가입");
            int signType=0;
            scanf("%d",&signType);
            
            system("clear");
            if(signType ==1){
                           ShopingSignUp *shopingSignUp = [[ShopingSignUp alloc] init];
            
                clientsNumber = [shopingSignUp signUp:signType clientsNumber:clientsNumber];
                
                 NSLog(@"%ld가 다음회원가입수입니다.",clientsNumber);
                
                NSUInteger i;
                for(i=0;i<3;i++){
                
                   // NSLog(@"%@",);
                
                
                }
                
                        }
            break;
            
        case 5:
           
             NSLog(@"종료합니다.");
            
            
             return 0;
    }
    
    
   
    
        system( "clear" );
    
    
    
    
    
    
    
    
    }
    
    
    
    
    
    
    
    return 0;
}
