//
//  BasicNavigationBar.m
//  PhotoDiary
//
//  Created by 진호정 on 2016. 10. 25..
//  Copyright © 2016년 iosSchool. All rights reserved.
//

#import "BasicNavigationBar.h"

@interface BasicNavigationBar()





@property UIImageView *logo;
@property UIButton *leftButton;
@property UIButton *rightButton;


@end



@implementation BasicNavigationBar



-(instancetype)initWithType:(BasicNavigationBarStyle)type viewController: (UIViewController *)viewController target :(id)target action:(SEL)action{

    self = [super init];
    if(self){
    
    
        if(viewController!=nil){
        
            
            self.frame = CGRectMake(0, 25,[UIScreen mainScreen].bounds.size.width, 60);
            [self CreateWithType:type target:target action:action];
            [viewController.view addSubview:self];
            
        }
        
        
        
    }
    
    

    return  self;
    
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/


- (void)CreateWithType:(BasicNavigationBarStyle)type
                                    target:(id)target
                                    action:(SEL)action{



    
   // const NSInteger naviStartPointY = 20 + 5;
    
    
    self.backgroundColor = [UIColor colorWithRed:60.f/255.0f green:173.0f/255.0f blue:121.0f/255.0 alpha:1];
    
    self.logo = [[UIImageView alloc]init];
    
    self.logo.image  = [UIImage imageNamed:@"baby"];
    
    self.logo.frame =CGRectMake(self.center.x-( self.frame.size.width/2)/2,self.center.y-(self.frame.size.height)/4-25, self.frame.size.width/2, self.frame.size.height/2);
    [self addSubview:self.logo];
    switch (type) {
        case 1:
            
            self.leftButton = [UIButton buttonWithType:UIButtonTypeCustom];
            [self.leftButton setTitle:@"뒤로가기" forState:UIControlStateNormal];
            self.leftButton.frame = CGRectMake(self.frame.origin.x+10,self.frame.origin.y+10, self.frame.size.width/4,self.frame.size.height);
            
            [self addSubview:self.leftButton];
            
            
            break;
            
        case 2:
            
            self.leftButton = [UIButton buttonWithType:UIButtonTypeCustom];
            [self.leftButton setTitle:@"뒤로가기" forState:UIControlStateNormal];
            self.leftButton.frame = CGRectMake(self.frame.origin.x+10,self.frame.origin.y+10, self.frame.size.width/4,self.frame.size.height);
            [self addSubview:self.leftButton];

            
            
            self.rightButton = [UIButton buttonWithType:UIButtonTypeCustom];
             [self.rightButton setTitle:@"앞으로" forState:UIControlStateNormal];
            self.rightButton.frame = CGRectMake(self.frame.size.width-self.frame.size.width/4, self.frame.origin.y+10,self.frame.size.width/4, self.frame.size.height);
            [self addSubview:self.rightButton];
            break;
        default:
            break;
    }
    
}


//-(void)updateFrame{
//
//
//    self.logo.frame =CGRectMake(self.center.x-( self.frame.size.width/2)/2,self.center.y-(self.frame.size.height/2)/2, self.frame.size.width/2, self.frame.size.height/2);
//    
//    self.
//
//
//}

    

    




@end
