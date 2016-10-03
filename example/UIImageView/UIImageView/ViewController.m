//
//  ViewController.m
//  UIImageView
//
//  Created by 진호정 on 2016. 9. 30..
//  Copyright © 2016년 iosSchool. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
   
    
    //기본프레임
    UIView *baseFrame = [[UIView alloc] initWithFrame:CGRectMake(20, 50, self.view.frame.size.width-40, self.view.frame.size.height-250)];
    
    
    
    
    [self.view addSubview:baseFrame];
    
    //첫번째 자판기칸 프레임
    
    UIView *firstFrame =[[UIView alloc] initWithFrame:CGRectMake(0,0,baseFrame.frame.size.width/2-10,baseFrame.frame.size.height/2-10)];
    firstFrame.backgroundColor=[UIColor whiteColor];
    firstFrame.layer.borderColor=[UIColor blackColor].CGColor;
    firstFrame.layer.borderWidth=3.0f;
    firstFrame.layer.cornerRadius=30.0f;
    firstFrame.layer.masksToBounds=YES;
     [baseFrame addSubview:firstFrame];
    
    
    UIView *secondFrame=[[UIView alloc] initWithFrame:CGRectMake(firstFrame.frame.size.width+20, 0, firstFrame.frame.size.width, baseFrame.frame.size.height/2-10) ];
    
    secondFrame.backgroundColor =[UIColor redColor];
    secondFrame.layer.borderColor=[UIColor blackColor].CGColor;
    secondFrame.layer.borderWidth=3.0f;
    secondFrame.layer.cornerRadius=30.0f;
    secondFrame.layer.masksToBounds=YES;
    [baseFrame addSubview:secondFrame];
    
    
    //세번쨰
    UIView *thirdFrame = [[UIView alloc] initWithFrame:CGRectMake(secondFrame.frame.size.width+20, secondFrame.frame.size.height+20, secondFrame.frame.size.width, secondFrame.frame.size.height)];
    
                          
                          
    thirdFrame.backgroundColor =[UIColor whiteColor];
    thirdFrame.layer.borderColor=[UIColor blackColor].CGColor;
    thirdFrame.layer.borderWidth=3.0f;
    thirdFrame.layer.cornerRadius=30.0f;
    thirdFrame.layer.masksToBounds=YES;
    [baseFrame addSubview:thirdFrame];
    
    
    //네번째
    UIView *fourFrame=[[UIView alloc] initWithFrame:CGRectMake(0, thirdFrame.frame.size.height+20,thirdFrame.frame.size.width, thirdFrame.frame.size.height)];
    
    fourFrame.backgroundColor=[UIColor redColor];
    fourFrame.layer.borderColor=[UIColor blackColor].CGColor;
    fourFrame.layer.borderWidth=3.0f;
    fourFrame.layer.cornerRadius=30.0f;
    fourFrame.layer.masksToBounds=YES;
    [baseFrame addSubview:fourFrame];
    
    //중간프레임
    UIView *middleFrame=[[UIView alloc] initWithFrame:CGRectMake(0, baseFrame.frame.size.height+20, baseFrame.frame.size.width, baseFrame.frame.size.height/4)];
    
    middleFrame.backgroundColor=[UIColor blackColor];
    
    [baseFrame addSubview:middleFrame];
    
    UIView *bottomFrame =[[UIView alloc] initWithFrame:CGRectMake(0,middleFrame.frame.size.height+20,middleFrame.frame.size.width,middleFrame.frame.size.height/3)];
    
    bottomFrame.backgroundColor=[UIColor blackColor];
    [middleFrame addSubview:bottomFrame];
    
    
    //잔액label만들기
    
    UILabel *balance  =[[UILabel alloc] initWithFrame:CGRectMake(0,0, middleFrame.frame.size.width, middleFrame.frame.size.height)];
    
    balance.text =@"잔액";
    balance.textColor =[UIColor  whiteColor];
    balance.font =[UIFont systemFontOfSize:40.0f];
    balance.textAlignment =NSTextAlignmentRight;
    balance.font =[UIFont boldSystemFontOfSize:80.0f];
    
    [middleFrame addSubview:balance];
    
    
    //첫번째프레임 사진넣기
    UIImageView *obamaPic=[[UIImageView alloc] initWithFrame:CGRectMake(0, 0,firstFrame.frame.size.width, firstFrame.frame.size.height-40)];
    
    obamaPic.image=[UIImage imageNamed:@"obama.jpg"];
    [firstFrame addSubview:obamaPic];
    
    //첫번쨰프레임 레이블넣기
    
    UILabel *obamaLabel=[[UILabel alloc] initWithFrame:CGRectMake(0, obamaPic.frame.size.height,firstFrame.frame.size.width,40)];
    
    obamaLabel.text=@"핵500발";
    obamaLabel.textAlignment=NSTextAlignmentCenter;
    
    [firstFrame addSubview:obamaLabel];
    
    
    
   
    
    //두번째프레임 사진넣기
    UIImageView *trumpPic=[[UIImageView alloc] initWithFrame:CGRectMake(0, 0,secondFrame.frame.size.width, secondFrame.frame.size.height-40)];
    
    trumpPic.image=[UIImage imageNamed:@"trump.jpg"];
    
    
    [secondFrame addSubview:trumpPic];
    
    //두번쨰프레임 레이블넣기
    
    UILabel *trumpLabel=[[UILabel alloc] initWithFrame:CGRectMake(0, trumpPic.frame.size.height,secondFrame.frame.size.width,40)];
    
    trumpLabel.text=@"핵200발";
    trumpLabel.textAlignment=NSTextAlignmentCenter;
    
    [secondFrame addSubview:trumpLabel];
    
    
    
   // [secondtFrame addSubview:truPic];
    
    
    //세번째프레임 사진넣기
    UIImageView *hilPic=[[UIImageView alloc] initWithFrame:CGRectMake(0, 0,thirdFrame.frame.size.width, thirdFrame.frame.size.height-40)];
    
    hilPic.image=[UIImage imageNamed:@"hil.jpg"];
    
    
    [thirdFrame addSubview:hilPic];
    
    
    //세번쨰프레임 레이블넣기
    
    UILabel *hilLabel=[[UILabel alloc] initWithFrame:CGRectMake(0, hilPic.frame.size.height,thirdFrame.frame.size.width,40)];
    
    hilLabel.text=@"핵300발";
    hilLabel.textAlignment=NSTextAlignmentCenter;
    
    [thirdFrame addSubview:hilLabel];
    
    
    
    //네번째프레임 사진넣기
    UIImageView *kimPic=[[UIImageView alloc] initWithFrame:CGRectMake(0, 0,fourFrame.frame.size.width, fourFrame.frame.size.height-40)];
    
    kimPic.image=[UIImage imageNamed:@"kimjungeun.jpg"];
    
    
    [fourFrame addSubview:kimPic];
    
    
    
    UILabel *kimLabel=[[UILabel alloc] initWithFrame:CGRectMake(0, kimPic.frame.size.height,fourFrame.frame.size.width,40)];
    
    kimLabel.text=@"핵1000발";
    kimLabel.textAlignment=NSTextAlignmentCenter;
    
    [fourFrame addSubview:kimLabel];
    
    //핵100발
    UIButton *newclear1=[[UIButton alloc] initWithFrame:CGRectMake(0,0,bottomFrame.frame.size.width/4, bottomFrame.frame.size.height)];
    
    [newclear1 setTitle:@"핵100발" forState:UIControlStateNormal];
    newclear1.titleLabel.textAlignment=NSTextAlignmentCenter;
    [bottomFrame addSubview:newclear1];
    
    
    //핵500발
    UIButton *newclear2=[[UIButton alloc] initWithFrame:CGRectMake(newclear1.frame.size.width,0,bottomFrame.frame.size.width/4, bottomFrame.frame.size.height)];
    
    [newclear2 setTitle:@"핵500발" forState:UIControlStateNormal];
    newclear2.titleLabel.textAlignment=NSTextAlignmentCenter;
    [bottomFrame addSubview:newclear2];
    
    //핵1000발
    UIButton *newclear3=[[UIButton alloc] initWithFrame:CGRectMake(+newclear1.frame.size.width+newclear2.frame.size.width,0,bottomFrame.frame.size.width/4, bottomFrame.frame.size.height)];
    
    [newclear3 setTitle:@"핵1000발" forState:UIControlStateNormal];
    newclear3.titleLabel.textAlignment=NSTextAlignmentCenter;
    [bottomFrame addSubview:newclear3];

    //핵2000발
    UIButton *newclear4=[[UIButton alloc] initWithFrame:CGRectMake(+newclear1.frame.size.width+newclear2.frame.size.width+newclear3.frame.size.width,0,bottomFrame.frame.size.width/4, bottomFrame.frame.size.height)];
    
    [newclear4 setTitle:@"핵2000발" forState:UIControlStateNormal];
    newclear4.titleLabel.textAlignment=NSTextAlignmentCenter;
    [bottomFrame addSubview:newclear4];


    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
