//
//  Iphone.h
//  InitClass
//
//  Created by 진호정 on 2016. 9. 23..
//  Copyright © 2016년 iosSchool. All rights reserved.
//

#import "Phone.h"

@interface Iphone : Phone



@property BOOL useEarPodType;


- (instancetype)initWithUseEarPodType :(BOOL)useEarPodType;
- (id)mountEarPod :(BOOL)someEarPodDevice;

@end
