//
//  App.m
//  InitClass
//
//  Created by 진호정 on 2016. 9. 23..
//  Copyright © 2016년 iosSchool. All rights reserved.
//

#import "App.h"

@implementation App



- (instancetype) init{

    self =[self init];
    
    self.name =@"UnknownAppName";
    




    return self;
}



- (instancetype)initWithName:(NSString *)name volume:(NSInteger)volume{

    self = [super init];
    
    self.name   = name;
    self.volume = volume;
    

    return self;
}


@end
