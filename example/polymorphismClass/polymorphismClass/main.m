//
//  main.m
//  polymorphismClass
//
//  Created by 진호정 on 2016. 9. 21..
//  Copyright © 2016년 iosSchool. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Cat.h"
#import "Dragon.h"
#import "Tiger.h"
int main(int argc, const char * argv[]) {
   
    
    
    Cat *fishMonster = [[Cat alloc] init];
    
     fishMonster.name =@"생선먹는고양이";
    
    [fishMonster cry];
    
    
    
    Dragon *youngGu = [[Dragon alloc] init];
    
    
    youngGu.name = @"simHyungRae";
    
    [youngGu cry];
    
    
    
    Tiger *hodoli = [[Tiger alloc] init];
    
    hodoli.name = @"88이";
    
    [hodoli cry];
    
    return 0;
}
