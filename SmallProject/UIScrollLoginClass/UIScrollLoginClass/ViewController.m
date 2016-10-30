//
//  ViewController.m
//  UIScrollLoginClass
//
//  Created by 진호정 on 2016. 10. 11..
//  Copyright © 2016년 iosSchool. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UIScrollViewDelegate,UITextFieldDelegate>

@property UILabel *mainViewLabel;
@property UILabel *idLabel;
//pw은 뜻이 명확하지않아서 passwordLabel로 고침
@property UILabel *passwordLabel;

@property UITextField *idText;
//pw은 뜻이 명확하지않아서 passwordText로 고침
@property UITextField *passwordText;
@property UIScrollView *mainScroll;
@property UITapGestureRecognizer *anotherWindowTap;
//Btn은 축약이여서 명확하지 않으므로 Button으로 바꾼다.
@property UIButton *loginButton;
@property UIButton *signInButton;
@property UIView *loginWindow;
//img축약이면서 음절을 끊어질때마다 대문자로 시작한다.
@property UIImageView *logoImageView;
@property CGPoint firstTouchPoint;
@property CGFloat xd;
@property CGFloat yd;
@property BOOL dragging;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    
    
    self.logoImageView=[[UIImageView alloc] init];
    self.logoImageView.frame=CGRectMake(self.view.frame.size.width/3, 90, 140,130);
    self.logoImageView.image=[UIImage imageNamed:@"musta"];
    
       [self.logoImageView setUserInteractionEnabled:YES];
    
    
    
    [self.view addSubview:self.logoImageView];
    
    self.mainScroll = [[UIScrollView alloc] initWithFrame:CGRectMake(0,0, self.view.frame.size.width, self.view.frame.size.height)];
    
    [self.mainScroll setContentSize:CGSizeMake(self.view.frame.size.width, self.view.frame.size.height)];
    
    self.mainScroll.delegate=self;
    [self.view addSubview:self.mainScroll];

//    UIView *eview= [[UIView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
//    eview.backgroundColor=[UIColor clearColor];
//    [self.mainScroll addSubview:eview];
    
    self.mainViewLabel = [[UILabel alloc]initWithFrame:CGRectMake(0,40,self.view.frame.size.width,50)];
    self.mainViewLabel.text=@"My   Login   Page";
    self.mainViewLabel.font=[UIFont systemFontOfSize:30.f];
        self.mainViewLabel.textAlignment=NSTextAlignmentCenter;
    [self.mainViewLabel setUserInteractionEnabled:YES];
    [self.view addSubview:self.mainViewLabel];

    //login 테두리
    self.loginWindow=[[UIView alloc]initWithFrame:CGRectMake(self.view.center.x-(self.view.frame.size.width-80)/2,220,self.view.frame.size.width-80, 160)];
    self.loginWindow.backgroundColor=[UIColor whiteColor];
    self.loginWindow.layer.borderColor=[UIColor blackColor].CGColor;
    self.loginWindow.layer.borderWidth=1.0f;
    self.loginWindow.layer.cornerRadius=14.0f;
    [self.mainScroll addSubview:self.loginWindow];
    

      //아이디라벨
    self.idLabel= [[UILabel alloc]initWithFrame:CGRectMake(80, 250,self.view.frame.size.width/5, 50)];
    self.idLabel.text= @"I D";
    self.idLabel.font=[UIFont boldSystemFontOfSize:18.0f];
    [self.mainScroll addSubview:self.idLabel];
    
    
    //비빌번호라벨
    
    self.passwordLabel= [[UILabel alloc]initWithFrame:CGRectMake(80, 300,self.view.frame.size.width/5, 50)];
    self.passwordLabel.text= @"PW";
    self.passwordLabel.font=[UIFont boldSystemFontOfSize:18.0f];
    [self.mainScroll addSubview:self.passwordLabel];
    
    //아이디텍스트창
    
    self.idText=[[UITextField alloc] initWithFrame:CGRectMake(130, 250, 150, 50)];
    
    self.idText.clearButtonMode=UITextFieldViewModeWhileEditing;
   
     self.idText.placeholder=@"아이디";
    [self.mainScroll addSubview:self.idText];
    self.idText.delegate=self;
    
    //비밀번호창
    
    self.passwordText=[[UITextField alloc] initWithFrame:CGRectMake(130, 300, 150, 50)];
    self.passwordText.clearButtonMode=UITextFieldViewModeWhileEditing;
    self.passwordText.secureTextEntry=YES;
    self.passwordText.placeholder=@"패스워드";
    [self.mainScroll addSubview:self.passwordText];
    self.passwordText.delegate=self;
    
    
    self.anotherWindowTap=[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(resignKeyboard:)];
    
    [self.view addGestureRecognizer:self.anotherWindowTap];
    

    //login Button
    
    self.loginButton = [UIButton buttonWithType:UIButtonTypeCustom];
    self.loginButton.frame=CGRectMake(100, 400, 50, 30);
    [self.loginButton setTitle:@"로그인" forState:UIControlStateNormal];
    [self.loginButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [self.loginButton setTitle:@"로그인" forState:UIControlStateHighlighted];
    [self.loginButton setTitleColor:[UIColor grayColor] forState:UIControlStateHighlighted];
    [self.loginButton setTitle:@"로그인" forState:UIControlStateSelected];
    [self.loginButton setTitleColor:[UIColor grayColor] forState:UIControlStateSelected];
         self.loginButton.backgroundColor=[UIColor whiteColor];
     [self.mainScroll addSubview:self.loginButton];
    
    
    //signIn Button
    
    self.signInButton = [UIButton buttonWithType:UIButtonTypeCustom];
    self.signInButton.frame=CGRectMake(200, 400, 80, 30);
    [self.signInButton setTitle:@"회원가입" forState:UIControlStateNormal];
    [self.signInButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [self.signInButton setTitle:@"회원가입"forState:UIControlStateHighlighted];
    [self.signInButton setTitleColor:[UIColor grayColor] forState:UIControlStateHighlighted];
    [self.signInButton setTitle:@"회원가입"forState:UIControlStateSelected];
    [self.signInButton setTitleColor:[UIColor grayColor] forState:UIControlStateSelected];

    self.signInButton.backgroundColor=[UIColor whiteColor];
    [self.mainScroll addSubview:self.signInButton];
    
    UIButton *passwordButton=[[UIButton alloc] init];
    passwordButton.frame=CGRectMake(300, 315, 20, 20);
    [passwordButton setImage:[UIImage imageNamed:@"unchecked"] forState:UIControlStateNormal];
     [passwordButton setImage:[UIImage imageNamed:@"checkedPw"] forState:UIControlStateSelected];
    
    
    [passwordButton addTarget:self action:@selector(TouchInSideCheckBox:) forControlEvents:UIControlEventTouchUpInside];
    [self.mainScroll addSubview:passwordButton];
    
    

}


//- (void)touchesBegan:(NSSet*)touches withEvent:(UIEvent*)event {
//    UITouch *touch = [[event allTouches] anyObject];
//    CGPoint touchLocation = [touch locationInView:touch.view];
//    self.logoimgView.center = touchLocation;
//    
//    if ([touch.view isEqual: self.view] || touch.view == nil) {
//        return;
//    }
//    
//}
//-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
//    UITouch *touch = [touches anyObject];
//    self.firstTouchPoint = [touch locationInView:self.view];
//    NSLog(@"%lf",self.firstTouchPoint.x);
//
//
//
//}

- (void)touchesMoved:(NSSet*)touches withEvent:(UIEvent*)event {
    UITouch *touch = [touches anyObject];
    printf("---------");
    self.firstTouchPoint = [touch locationInView:self.view];
    
        self.mainViewLabel.center=CGPointMake(self.firstTouchPoint.x
                                            , self.firstTouchPoint.y);
    
}

-(void)TouchInSideCheckBox:(UIButton*)sender{

    if(sender.selected){
        sender.selected=NO;
        
        NSLog(@"누른걸또누름");
        self.passwordText.secureTextEntry=YES;
    }else{
        NSLog(@"처음누름");

        sender.selected=YES;
        
     
        self.passwordText.secureTextEntry=NO;
    
    }
    


}




-(BOOL)textFieldShouldClear:(UITextField *)textField{
    
    
    NSLog(@"지움");
    return YES;
}


-(void)resignKeyboard:(UITapGestureRecognizer*)tap{

[self.mainScroll setContentOffset:CGPointMake(0, -20) animated:YES];
    [self.idText resignFirstResponder];
    [self.passwordText resignFirstResponder];

}


-(BOOL)textFieldShouldBeginEditing:(UITextField *)textField{

       [self.mainScroll setContentOffset:CGPointMake(0, 20) animated:YES];
    return YES;

}

-(BOOL)textFieldShouldReturn:(UITextField *)textField{

    
   // [self.mainScroll setContentOffset:CGPointMake(0, 30) animated:YES];
    [self.idText resignFirstResponder];
    
    NSLog(@"dsds");
    [self.passwordText becomeFirstResponder];
   // ;
   
    if([self.passwordText.text length]>=1){
       [self.mainScroll setContentOffset:CGPointMake(0, -20) animated:YES];
        [self.passwordText resignFirstResponder];
        
        
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
