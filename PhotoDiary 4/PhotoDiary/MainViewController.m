//
//  MainViewController.m
//  PhotoDiary
//
//  Created by 진호정 on 2016. 10. 24..
//  Copyright © 2016년 iosSchool. All rights reserved.
//

#import "MainViewController.h"
#import "TableViewCell.h"
#import "BasicNavigationBar.h"
@interface MainViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *mainTableView;

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.navigationController.navigationBar.hidden=YES;
    self.mainTableView.delegate = self;
    self.mainTableView.dataSource = self;
    
    self.mainTableView.tableFooterView = [[UIView alloc]
                                      initWithFrame:CGRectZero];
    BasicNavigationBar *frontBar =[[BasicNavigationBar alloc]initWithType:BasicNavigationBarStyleLeftButton viewController:self target:self action:nil];
    
    
}


-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{


    return 15;


}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{


    return 1;

}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{

    
    TableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
    if(cell==nil){
    
        cell = [[TableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"Cell"];
        
    }
    
    UIView *selectionColor = [[UIView alloc] init];
    selectionColor.backgroundColor = [UIColor colorWithRed:60.f/255.0f green:173.0f/255.0f blue:121.0f/255.0 alpha:0.7];
    cell.selectedBackgroundView = selectionColor;
    
        cell.mainTitle.text=@"제목";
        cell.date.text=@"2016.09.15";
    cell.mainImage.image=[UIImage imageNamed:@"baby"];
    
    
    return cell;
    
}


-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{


    [tableView deselectRowAtIndexPath:indexPath animated:YES];

    

}

//-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
//
//
//    return 80.0f;
//    
//
//}

-(CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{


    return 15.0f;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




-(IBAction)touchInSideBackButton:(id)sender{


    [self dismissViewControllerAnimated:YES completion:nil];
    
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
