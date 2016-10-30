//
//  BasicNavigationBar.h
//  PhotoDiary
//
//  Created by 진호정 on 2016. 10. 25..
//  Copyright © 2016년 iosSchool. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BasicNavigationBar : UIView
typedef enum {
    
    
    BasicNavigationBarStyleNormal = 0,
    BasicNavigationBarStyleLeftButton = 1,
    BasicNavigationBarStyleRightButton = 2
    
}BasicNavigationBarStyle;

-(instancetype)initWithType:(BasicNavigationBarStyle)type viewController: (UIViewController *)viewController target :(id)target action:(SEL)action;
@end
