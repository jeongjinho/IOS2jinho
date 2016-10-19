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
@property UIButton *loginBtn;
@property UIButton *signInBtn;
@property UIView *loginWindow;
@property UIImageView *logoimgView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    
    UILabel *mainViewLabel = [[UILabel alloc]initWithFrame:CGRectMake(0,40,self.view.frame.size.width,50)];
    mainViewLabel.text=@"My   Login   Page";
    mainViewLabel.font=[UIFont systemFontOfSize:30.f];
    [self.view addSubview:mainViewLabel];
    mainViewLabel.textAlignment=NSTextAlignmentCenter;
    
    self.logoimgView=[[UIImageView alloc] init];
    self.logoimgView.frame=CGRectMake(self.view.center.x-70, 90, 140,130);
    self.logoimgView.image=[UIImage imageNamed:@"musta"];
    
    [self.view addSubview:self.logoimgView];
    
    self.mainScroll = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    
    [self.mainScroll setContentSize:CGSizeMake(self.view.frame.size.width, self.view.frame.size.height+20)];
    
    self.mainScroll.delegate=self;
    
    //login 테두리
    self.loginWindow=[[UIView alloc]initWithFrame:CGRectMake(self.view.center.x-(self.view.frame.size.width-80)/2,220,self.view.frame.size.width-80, 160)];
    self.loginWindow.backgroundColor=[UIColor whiteColor];
    self.loginWindow.layer.borderColor=[UIColor blackColor].CGColor;
    self.loginWindow.layer.borderWidth=1.0f;
    self.loginWindow.layer.cornerRadius=14.0f;
    [self.mainScroll addSubview:self.loginWindow];
    

    [self.view addSubview:self.mainScroll];
    //아이디라벨
    self.idLabel= [[UILabel alloc]initWithFrame:CGRectMake(80, 250,self.view.frame.size.width/5, 50)];
    self.idLabel.text= @"I D";
    self.idLabel.font=[UIFont boldSystemFontOfSize:18.0f];
    [self.mainScroll addSubview:self.idLabel];
    
    
    //비빌번호라벨
    
    self.pwLabel= [[UILabel alloc]initWithFrame:CGRectMake(80, 300,self.view.frame.size.width/5, 50)];
    self.pwLabel.text= @"PW";
    self.pwLabel.font=[UIFont boldSystemFontOfSize:18.0f];
    [self.mainScroll addSubview:self.pwLabel];
    
    //아이디텍스트창
    
    self.idText=[[UITextField alloc] initWithFrame:CGRectMake(130, 250, 150, 50)];
    
    self.idText.clearButtonMode=UITextFieldViewModeWhileEditing;
   
     self.idText.placeholder=@"아이디";
    [self.mainScroll addSubview:self.idText];
    self.idText.delegate=self;
    
    //비밀번호창
    
    self.pwText=[[UITextField alloc] initWithFrame:CGRectMake(130, 300, 150, 50)];
    self.pwText.clearButtonMode=UITextFieldViewModeWhileEditing;
    self.pwText.secureTextEntry=YES;
    self.pwText.placeholder=@"패스워드";
    [self.mainScroll addSubview:self.pwText];
    self.pwText.delegate=self;
    
    
    self.tap=[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(resignKeyboard:)];
    
    [self.view addGestureRecognizer:self.tap];
    

    //login Button
    
    self.loginBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    self.loginBtn.frame=CGRectMake(100, 400, 50, 30);
    [self.loginBtn setTitle:@"로그인" forState:UIControlStateNormal];
    [self.loginBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [self.loginBtn setTitle:@"로그인" forState:UIControlStateHighlighted];
    [self.loginBtn setTitleColor:[UIColor grayColor] forState:UIControlStateHighlighted];
    [self.loginBtn setTitle:@"로그인" forState:UIControlStateSelected];
    [self.loginBtn setTitleColor:[UIColor grayColor] forState:UIControlStateSelected];
         self.loginBtn.backgroundColor=[UIColor whiteColor];
     [self.mainScroll addSubview:self.loginBtn];
    
    
    //signIn Button
    
    self.signInBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    self.signInBtn.frame=CGRectMake(200, 400, 80, 30);
    [self.signInBtn setTitle:@"회원가입" forState:UIControlStateNormal];
    [self.signInBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [self.signInBtn setTitle:@"회원가입"forState:UIControlStateHighlighted];
    [self.signInBtn setTitleColor:[UIColor grayColor] forState:UIControlStateHighlighted];
    [self.signInBtn setTitle:@"회원가입"forState:UIControlStateSelected];
    [self.signInBtn setTitleColor:[UIColor grayColor] forState:UIControlStateSelected];

    self.signInBtn.backgroundColor=[UIColor whiteColor];
    [self.mainScroll addSubview:self.signInBtn];
    
    UIButton *pwButton=[[UIButton alloc] init];
    pwButton.frame=CGRectMake(300, 315, 20, 20);
    [pwButton setImage:[UIImage imageNamed:@"unchecked"] forState:UIControlStateNormal];
     [pwButton setImage:[UIImage imageNamed:@"checkedPw"] forState:UIControlStateSelected];
    
    
    [pwButton addTarget:self action:@selector(TouchInSideCheckBox:) forControlEvents:UIControlEventTouchUpInside];
    [self.mainScroll addSubview:pwButton];
    
    

}


-(void)TouchInSideCheckBox:(UIButton*)sender{

    if(sender.selected){
        sender.selected=NO;
        
        NSLog(@"누른걸또누름");
        self.pwText.secureTextEntry=YES;
    }else{
        NSLog(@"처음누름");

        sender.selected=YES;
        
     
        self.pwText.secureTextEntry=NO;
    
    }
    


}




-(BOOL)textFieldShouldClear:(UITextField *)textField{
    
    
    NSLog(@"지움");
    return YES;
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
