//
//  Tiger.m
//  InheritanceClass
//
//  Created by 진호정 on 2016. 9. 22..
//  Copyright © 2016년 iosSchool. All rights reserved.
//

#import "Tiger.h"

@implementation Tiger


- (id)cry{
    
    
    NSLog(@"%@가 어흥어흥 ~~~",self.name);
    
    
    
    
    
    return nil;
}


- (id)playWithAnoterAnimal:(Tiger *)anotherAnimal {


    NSLog(@" %@와 놀고있습니다.",anotherAnimal.name);

    return nil;
}
@end
