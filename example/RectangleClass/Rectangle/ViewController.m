//
//  ViewController.m
//  Rectangle
//
//  Created by 진호정 on 2016. 9. 29..
//  Copyright © 2016년 iosSchool. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    UIView *firtSide = [[UIView alloc] initWithFrame:CGRectMake(50, self.view.frame.size.height/3,self.view.frame.size.width-100, self.view.frame.size.height+20-self.view.frame.size.height)];
    firtSide.backgroundColor=[UIColor blueColor];
    
    
    
    [self.view addSubview:firtSide];
    
    UIView *secondSide =[[UIView alloc] initWithFrame:CGRectMake(50,self.view.frame.size.height/3+20 ,20,140)];
    
    
    secondSide.backgroundColor=[UIColor redColor];
    
    
    
    [self.view addSubview:secondSide];
    
    
     UIView *thirdSide =[[UIView alloc] initWithFrame:CGRectMake(self.view.frame.size.width-70,self.view.frame.size.height/3+20 ,20,140)];
    
    thirdSide.backgroundColor=[UIColor redColor];
    
    
    
    [self.view addSubview:thirdSide];
    
    
    UIView *fourSide = [[UIView alloc] initWithFrame:CGRectMake(50, self.view.frame.size.height/3+thirdSide.frame.size.height+20,self.view.frame.size.width-100, self.view.frame.size.height+20-self.view.frame.size.height)];
    
    fourSide.backgroundColor=[UIColor blueColor];
    
    
    
    [self.view addSubview:fourSide];
    
    

    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
