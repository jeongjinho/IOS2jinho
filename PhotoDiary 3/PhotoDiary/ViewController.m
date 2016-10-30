//
//  ViewController.m
//  PhotoDiary
//
//  Created by 진호정 on 2016. 10. 22..
//  Copyright © 2016년 iosSchool. All rights reserved.
//

#import "ViewController.h"
#import "SignUpViewController.h"
#import "MainViewController.h"
#import "BasicButton.h"
#import "BasicNavigationBar.h"
@interface ViewController ()<UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *passwordField;
@property (weak, nonatomic) IBOutlet UITextField *idField;
@property (weak, nonatomic) IBOutlet UIView *basicView;

@property (strong, nonatomic)UITapGestureRecognizer *tap;

@end

@implementation ViewController


-(void)viewWillAppear:(BOOL)animated{


    [super viewWillAppear:YES];
    
    self.navigationController.navigationBar.hidden=YES;



}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    BasicNavigationBar *basicBar = [[BasicNavigationBar alloc]initWithType:BasicNavigationBarStyleNormal viewController:self target:self action:nil];
    
    //비밀번호 가리기
    self.passwordField.secureTextEntry=YES;
    
    self.tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(endEditing:)];
    
    [self.view addGestureRecognizer:self.tap];
}
//화면키보드 리턴눌렀을떄
-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    [textField endEditing:YES];
    [self.passwordField becomeFirstResponder];
    
    if([self.passwordField.text length]>=1){
        
        [self.passwordField endEditing:YES];

           }
    
    
    
    return YES;

}


-(IBAction)touchInSideSignUpButton:(id)sender{

    if([sender isKindOfClass:[UIButton class]]){
    
    
    
        //회원가입페이지로넘어가기
        
        UIStoryboard *storyBoard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
        
        SignUpViewController *signViewController = [storyBoard instantiateViewControllerWithIdentifier:@"SignUpViewController"];
        
        
        [self.navigationController pushViewController:signViewController animated:YES];
    
    
    }



}

-(IBAction)touchInSideSignInButton:(id)sender{

    UIStoryboard *storyBoard =[UIStoryboard storyboardWithName:@"Main" bundle:nil];
    
    MainViewController *mainViewController= [storyBoard instantiateViewControllerWithIdentifier:@"MainViewController"];

    [self presentViewController:mainViewController animated:YES completion:nil];

}


-(void)endEditing:(UITapGestureRecognizer*)tap{

    [self.idField endEditing:YES];
    [self.passwordField endEditing:YES];


}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
