//
//  GalaxyNote.m
//  InitClass
//
//  Created by 진호정 on 2016. 9. 23..
//  Copyright © 2016년 iosSchool. All rights reserved.
//

#import "GalaxyNote.h"

@implementation GalaxyNote


- (id)explotion{

    
 
    NSInteger randomExplotionNumber = arc4random_uniform(6);
    
    if(randomExplotionNumber <3){
    
        NSLog(@"갤럭시노트가 폭발했습니다.");
        
        
    }
    
    return nil;

}

- (id)chargeBattery:(NSInteger)wantedBatteryVolume{

    NSLog(@"갤럭시노트가 %ld로 충전되었습니다.",wantedBatteryVolume);

    if(wantedBatteryVolume==100){
    
        [self explotion];
    
    
    }

    
    
    
    
    
    return nil;
}
@end
