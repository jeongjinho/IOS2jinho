//
//  BasicButton.m
//  PhotoDiary
//
//  Created by 진호정 on 2016. 10. 24..
//  Copyright © 2016년 iosSchool. All rights reserved.
//

#import "BasicButton.h"

@implementation BasicButton


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    
   
    self.titleLabel.textColor =[UIColor colorWithRed:60.f/255.0f green:173.0f/255.0f blue:121.0f/255.0 alpha:1];
    
       

}


- (void)awakeFromNib
{
    [super awakeFromNib];
    
}


- (void)setHighlighted:(BOOL)highlighted {
    [super setHighlighted:highlighted];
    NSLog(@"%@ 입니다.", highlighted ? @"YES" : @"NO");
    if (highlighted) {
        self.backgroundColor =
        [UIColor colorWithRed:60.f/255.0f green:173.0f/255.0f blue:121.0f/255.0 alpha:1];
 
        self.titleLabel.textColor =[UIColor whiteColor];
         
         
         } else {
             self.titleLabel.textColor =[UIColor colorWithRed:60.f/255.0f green:173.0f/255.0f blue:121.0f/255.0 alpha:1];
        
    }
}


- (void) setupUI {
    if(self.highlighted){
    
    
        self.backgroundColor=[UIColor colorWithRed:60.f/255.0f green:173.0f/255.0f blue:121.0f/255.0 alpha:1];
    }
}
@end
