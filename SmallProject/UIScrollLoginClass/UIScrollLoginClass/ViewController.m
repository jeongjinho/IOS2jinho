//
//  ViewController.m
//  UIScrollLoginClass
//
//  Created by 진호정 on 2016. 10. 11..
//  Copyright © 2016년 iosSchool. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UIScrollViewDelegate,UITextFieldDelegate>


@property UILabel *idLabel;
@property UILabel *pwLabel;
@property UITextField *idText;
@property UITextField *pwText;
@property UIScrollView *mainScroll;
@property UITapGestureRecognizer *tap;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    
    UILabel *mainViewLabel = [[UILabel alloc]initWithFrame:CGRectMake(0,80,self.view.frame.size.width,50)];
    mainViewLabel.text=@"My   Login   Page";
    [self.view addSubview:mainViewLabel];
    mainViewLabel.textAlignment=NSTextAlignmentCenter;
    
    
    self.mainScroll = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    
    [self.mainScroll setContentSize:CGSizeMake(self.view.frame.size.width, self.view.frame.size.height+50)];
    
    self.mainScroll.delegate=self;
    
    //mainScroll.pagingEnabled=YES;
    [self.view addSubview:self.mainScroll];
    //아이디라벨
    self.idLabel= [[UILabel alloc]initWithFrame:CGRectMake(80, 250,self.view.frame.size.width/5, 50)];
    self.idLabel.text= @"ID";
    self.idLabel.font=[UIFont boldSystemFontOfSize:18.0f];
    [self.mainScroll addSubview:self.idLabel];
    
    
    //비빌번호라벨
    
    self.pwLabel= [[UILabel alloc]initWithFrame:CGRectMake(80, 300,self.view.frame.size.width/5, 50)];
    self.pwLabel.text= @"PW";
    self.pwLabel.font=[UIFont boldSystemFontOfSize:18.0f];
    [self.mainScroll addSubview:self.pwLabel];
    
    //아이디텍스트창
    
    self.idText=[[UITextField alloc] initWithFrame:CGRectMake(130, 250, 150, 50)];
    
     self.idText.placeholder=@"Write the your ID";
    [self.mainScroll addSubview:self.idText];
    self.idText.delegate=self;
    
    //비밀번호창
    
    self.pwText=[[UITextField alloc] initWithFrame:CGRectMake(130, 300, 150, 50)];
    
    self.pwText.placeholder=@"Write the your PW";
    [self.mainScroll addSubview:self.pwText];
    self.pwText.delegate=self;
    
    
    self.tap=[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(resignKeyboard:)];
    
    [self.view addGestureRecognizer:self.tap];
    
    
}

-(void)resignKeyboard:(UITapGestureRecognizer*)tap{

[self.mainScroll setContentOffset:CGPointMake(0, -20) animated:YES];
    [self.idText resignFirstResponder];
    [self.pwText resignFirstResponder];

}


-(BOOL)textFieldShouldBeginEditing:(UITextField *)textField{

       [self.mainScroll setContentOffset:CGPointMake(0, 20) animated:YES];
    return YES;

}

-(BOOL)textFieldShouldReturn:(UITextField *)textField{

    
   // [self.mainScroll setContentOffset:CGPointMake(0, 30) animated:YES];
    [self.idText resignFirstResponder];
    
    NSLog(@"dsds");
    [self.pwText becomeFirstResponder];
   // ;
   
    if([self.pwText.text length]>=1){
       [self.mainScroll setContentOffset:CGPointMake(0, -20) animated:YES];
        [self.pwText resignFirstResponder];
        
        
           }
    
    return  YES;

}


//-(BOOL)textFieldShouldEndEditing:(UITextField *)textField{
//
//
//
//
//    [self.mainScroll setContentOffset:CGPointMake(0, -30) animated:YES];
//
//    return YES;
//}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
