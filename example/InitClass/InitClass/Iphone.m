//
//  Iphone.m
//  InitClass
//
//  Created by 진호정 on 2016. 9. 23..
//  Copyright © 2016년 iosSchool. All rights reserved.
//

#import "Iphone.h"

@implementation Iphone


- (id)initWithUseEarPodType :(BOOL)useEarPodType{

    self =[super init];
    
    self.useEarPodType =useEarPodType;


    return self;

}

- (id)mountEarPod :(BOOL)someEarPodDevice{

    if(someEarPodDevice==YES){
    NSLog(@"기본 이어폰이 장착되었습니다.");
    }
    

    else{
    
        NSLog(@"에어팟장착 시 떨어뜨릴 수 있습니다..");
    
    }
    return nil;
}
@end
