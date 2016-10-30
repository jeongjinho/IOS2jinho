//
//  SignUpViewController.m
//  PhotoDiary
//
//  Created by 진호정 on 2016. 10. 24..
//  Copyright © 2016년 iosSchool. All rights reserved.
//

#import "SignUpViewController.h"

@interface SignUpViewController ()

@end

@implementation SignUpViewController

-(void)viewWillAppear:(BOOL)animated{

    [super viewWillAppear:YES];
    
    // self.navigationController.navigationBar.hidden=NO;
    

}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    //self.navigationController.hidesBarsOnTap =YES;
}



-(IBAction)touchINSideSiged:(id)sender{



    [self.navigationController popViewControllerAnimated:YES];


}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
