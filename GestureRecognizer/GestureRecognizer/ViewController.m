//
//  ViewController.m
//  GestureRecognizer
//
//  Created by 진호정 on 2016. 10. 27..
//  Copyright © 2016년 iosSchool. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@property NSInteger tapCount;
@property (strong, nonatomic) IBOutlet UITapGestureRecognizer *tap;
@property (weak, nonatomic) IBOutlet UILabel *locationLabel;

@property (weak, nonatomic) IBOutlet UILabel *label;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.scrollView.userInteractionEnabled=NO;
    
    
    
}

-(IBAction)touchScreen:(id)sender{

    UITapGestureRecognizer *tap = sender;
    
    
    self.tapCount++;
    
    NSString *tapCounts = [NSString stringWithFormat:@"%ld",self.tapCount];
    
     CGPoint tapLocation  =  [tap locationInView:self.view];
    
    NSString *tapLocations = [NSString stringWithFormat:@"(X좌표: %.1lf , Y좌표: %.1lf)",tapLocation.x ,tapLocation.y];
    
    self.label.text =tapCounts;
    self.locationLabel.text = tapLocations;
    
    


}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
