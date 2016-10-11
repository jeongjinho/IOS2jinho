//
//  ViewController.m
//  UIViewClass
//
//  Created by 진호정 on 2016. 10. 10..
//  Copyright © 2016년 iosSchool. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property NSArray  *btnName;
@property NSMutableArray *buttons;
@property UILabel *selectionLabel;
@property UIButton *beforeButton;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    self.btnName=@[@"1번",@"2번",@"3번",@"4번"];
    self.buttons=[[NSMutableArray alloc ]init];
    
    
    
    // Do any additional setup after loading the view, typically from a nib
    
//    
//    UIButton *okBtn = [UIButton buttonWithType:UIButtonTypeCustom];
//                    
//                       okBtn.frame =CGRectMake(30, 50, 100, 35);
//    
//    [okBtn setTitle:@"ok" forState:UIControlStateNormal];
//    [okBtn setTitle:@"TouchDown" forState:UIControlStateHighlighted];
//    [okBtn setTitle:@"selected" forState:UIControlStateSelected];
//    
//    [okBtn setTitleColor:[UIColor purpleColor] forState:UIControlStateNormal];
//    
//    
//     [okBtn setTitleColor:[UIColor yellowColor ] forState:UIControlStateHighlighted];
//    
//    okBtn.titleLabel.font= [UIFont systemFontOfSize:30];
//    [okBtn addTarget:self action:@selector(touchInsideOKBtn:) forControlEvents:UIControlEventTouchUpInside];
// 
//    [self.view addSubview:okBtn];
//    

    UISlider *srd  =[[UISlider alloc] initWithFrame:CGRectMake(50, 50,0, self.view.frame.size.width/2)];
    
    srd.minimumValue=1;
    srd.maximumValue=100;
    
    [srd addTarget:self action:@selector(changeLabel:) forControlEvents:UIControlEventValueChanged];
    
    [self.view addSubview:srd];
    UIView *firstView = [[UIView alloc] initWithFrame:CGRectMake(self.view.center.x-self.view.frame.size.width/4,self.view.center.y-self.view.frame.size.width/4, self.view.frame.size.width/2, self.view.frame.size.width/2)];
    
    firstView.backgroundColor=[UIColor greenColor];
    
    
    [self.view addSubview:firstView];
    
    self.selectionLabel =[[UILabel alloc] initWithFrame:CGRectMake(self.view.frame.size.width/4,firstView.frame.size.height, self.view.frame.size.width, firstView.frame.size.height/8)];
    
     _selectionLabel.text=@"버튼을 입력하세요";
    
    [self.view addSubview:self.
     selectionLabel];
    
    
   
    [self createButton];
    const NSInteger base=20;

    for(UIButton *btn in self.buttons){
        
        NSInteger row=btn.tag/2;
        NSInteger col=btn.tag%2;

        NSLog(@"row: %ld col: %ld",row,col);
        
        NSInteger width=(firstView.frame.size.width-20)/2;
        NSLog(@"width: %ld",width);
        NSInteger height=(firstView.frame.size.height-20)/2;
         NSLog(@"width: %ld",height);
        btn.frame=CGRectMake((base+width)*col,(base+height)*row , width,height);
        
    
        [btn addTarget:self action:@selector(touchInsideOKBtn:) forControlEvents:UIControlEventTouchUpInside];
        
        //슬라이드는 이벤트가  change~~value로 한다.
        [firstView addSubview:btn];
    
    
    }
    

    
    
}



-(void)createButton{
    
    
    for(NSInteger i=0;i<self.btnName.count;i++){
    
    
        UIButton *btn =[UIButton buttonWithType:UIButtonTypeCustom];
        [btn setTitle:self.btnName[i] forState:UIControlStateNormal];
           [btn setTitle:self.btnName[i] forState:UIControlStateHighlighted];
            [btn setTitle:self.btnName[i] forState:UIControlStateSelected];
        
            [btn setTitleColor:[UIColor purpleColor] forState:UIControlStateNormal];
        
        [btn setTitleColor:[UIColor whiteColor ] forState:UIControlStateHighlighted];
         [btn setTitleColor:[UIColor whiteColor ] forState:UIControlStateSelected];
        
            btn.titleLabel.font= [UIFont systemFontOfSize:30];
        
        btn.tag=i;
        
        [self.buttons addObject:btn];
    }
    
}


    

    






-(void)touchInsideOKBtn:(UIButton*)sender
{


    NSString *text= sender.titleLabel.text;
    
    
    if(sender.selected){
    
        sender.selected=NO;
        self.beforeButton=nil;
        
        self.selectionLabel.text=@"버튼 클릭전입니다.";
    
    }else{
    
        self.beforeButton.selected=NO;
        NSString *text=sender.titleLabel.text;
        self.selectionLabel.text=text;
        sender.selected=YES;
        self.beforeButton=sender;
    }


    NSLog(@"버튼클릭완료");
}

-(void)changeLabel:(UISlider*)sender{

    CGFloat change=sender.value;

    self.selectionLabel.text=[NSString stringWithFormat:@"%.0lf",change];
    


}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
