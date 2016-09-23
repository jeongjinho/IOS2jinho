//
//  View.m
//  InitClass
//
//  Created by 진호정 on 2016. 9. 23..
//  Copyright © 2016년 iosSchool. All rights reserved.
//

#import "View.h"

@implementation View



//초기화 메서드는 initWith까지는무조건 써줘야한다
- (instancetype)initWithWidth:(NSInteger)width WithHeight:(NSInteger)height{

    
    self=[self init];
    
    self.width =width;
    self.height=height;
    
    self.size = width * height;
    
    
    
    
    
    
    return self;

    



}




@end
