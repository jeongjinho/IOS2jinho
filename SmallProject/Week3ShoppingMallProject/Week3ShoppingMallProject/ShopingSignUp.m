//
//  ShopingSignUp.m
//  Week3ShoppingMallProject
//
//  Created by 진호정 on 2016. 9. 25..
//  Copyright © 2016년 iosSchool. All rights reserved.
//

#import "ShopingSignUp.h"
#import "Client.h"
@implementation ShopingSignUp



-(NSUInteger)signUp:(NSInteger)signTypeNumber clientsNumber :(NSUInteger)clientsNumber{
    
    Client *clients[32];
    //NSInteger clientNumber=clientsNumber;
    NSInteger i=0;
    if(signTypeNumber==1){
        
        
        NSLog(@"일반가입 유형을 선택했습니다.");
        
        
        char inputId[32];
        char inputPassword[16];
        char inputIdcardNumber[16];
        char inputName[16];
        char inputAddress[64];
        char inputPhoneNumber[16];
        
        NSLog(@"아이디를 입력하세요");
        scanf("%s",inputId);
        
        NSString *idName= [NSString stringWithUTF8String:inputId];
        
        
        NSLog(@"비밀번호를 입력하세요");
        scanf("%s",inputPassword);
        
        NSString *password= [NSString stringWithUTF8String:inputPassword];
        
        
        NSLog(@"주민등록번호을 입력하세요");
        scanf("%s",inputIdcardNumber);
        
        NSString *idCardNumber= [NSString stringWithUTF8String:inputIdcardNumber];
        
        
        NSLog(@"이름을 입력하세요");
        scanf("%s",inputName);
        
        NSString *name= [NSString stringWithUTF8String:inputName];
        
        NSLog(@"주소를입력하세요");
        scanf("%s",inputAddress);
        
        NSString *address= [NSString stringWithUTF8String:inputAddress];
        
        NSLog(@"휴대폰번호 를입력하세요");
        scanf("%s",inputPhoneNumber);
        
        NSString *phoneNumber= [NSString stringWithUTF8String:inputPhoneNumber];
        
        clients[clientsNumber] =[[Client alloc] initWithId:idName name:name password:password idCardNumber:idCardNumber phoneNumber:phoneNumber address:address];
        
         
       NSLog(@"%@회원님 일반회원으로 회원가입 되셨습니다.",clients[clientsNumber].name);
        
       clientsNumber++;
    }
    else{
        
      //  NSLog(@"%@회원님 관리자회원으로 회원가입 되셨습니다.",signMember.name);
        
        
        
    }
    
    i++;
    
    NSLog(@"클라이언트 ㄷ음수 출력 %ld",clientsNumber);
    return clientsNumber;
    
}

@end
