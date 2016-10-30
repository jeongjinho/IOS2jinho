//
//  ViewController.m
//  UITableForAnimal
//
//  Created by 진호정 on 2016. 10. 13..
//  Copyright © 2016년 iosSchool. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>


@property NSArray *strongPicture;
@property NSArray  *weakPicture;
@property UITableView *table;
@property NSArray *strong;
@property NSArray *weak;
@property NSArray *data;
@property NSArray *strongSubtitle;
@property NSArray *weakSubtitle;
@property NSMutableArray *test;
@property NSInteger index;
@property UIBarButtonItem * addButton;
@property BOOL  isEditing;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.isEditing=NO;
    // Do any additional setup after loading the view, typically from a nib.
    self.addButton =[[UIBarButtonItem alloc]initWithTitle:@"edit" style:UIBarButtonItemStylePlain target:self action:@selector(onClickedEditButton:)];
    [self.navigationItem setRightBarButtonItem:self.addButton];
    
    self.strongPicture = @[@"dog.jpg",@"buffalo.jpg",@"bear.jpg"];
    self.weakPicture = @[@"camel.jpg",@"black_swan.jpg"];
    self.strongSubtitle = @[@"아기강아지",@"겁나쎈 버팔로",@"불광동 불곰"];
    self.weakSubtitle = @[@"무한수분 낙타",@"검은수염"];
    self.strong = @[@"dog",@"buffalo",@"bear"];
    self.weak = @[@"camel",@"blackSwan"];
    
    
    self.data =@[@{@"category":@"센놈",@"animals":self.strong,@"picture":self.strongPicture,@"nickName":self.strongSubtitle},
                 @{@"category":@"약한놈",@"animals":self.weak,@"picture":self.weakPicture,@"nickName":self.weakSubtitle},
                 @{@"category":@"약한놈",@"animals":self.weak,@"picture":self.weakPicture,@"nickName":self.weakSubtitle},
                 @{@"category":@"약한놈",@"animals":self.weak,@"picture":self.weakPicture,@"nickName":self.weakSubtitle},
                 @{@"category":@"약한놈",@"animals":self.weak,@"picture":self.weakPicture,@"nickName":self.weakSubtitle},
                 @{@"category":@"센놈",@"animals":self.strong,@"picture":self.strongPicture,@"nickName":self.strongSubtitle},
                 @{@"category":@"센놈",@"animals":self.strong,@"picture":self.strongPicture,@"nickName":self.strongSubtitle}];
    self.test =  [NSMutableArray arrayWithArray:self.data];
  
    self.table =[[UITableView alloc] initWithFrame:CGRectMake(0, 50, self.view.frame.size.width, self.view.frame.size.height-50) style:UITableViewStylePlain];
    
    
    self.table.delegate=self;
    self.table.dataSource=self;
    //[self.table targetForAction:@selector(touching:) withSender:self];
    //self.table.allowsSelectionDuringEditing=YES;
    [self.view addSubview:self.table];
    
 
    
}

-(void)onClickedEditButton:(UIBarButtonItem*)sender{
    
  //테이블뷰를 에딧모드로
    
    
    
    if(!self.isEditing){
    
    [self.table setEditing:YES animated:YES];
        self.isEditing=YES;
    
    //일반모드로
    }else{
        [self.table setEditing:NO animated:YES];
        self.isEditing=NO;

    
    }
    
    //dataSource canEditing
    // delegate editingStyle;
    //committing editing;
}

-(BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath{

    return YES;

}
-(UITableViewCellEditingStyle)tableView:(UITableView *)tableView editingStyleForRowAtIndexPath:(NSIndexPath *)indexPath{

    return  UITableViewCellEditingStyleDelete;
}
-(void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath{

    // 데이터지우기
    NSMutableDictionary *dic = [NSMutableDictionary dictionaryWithDictionary:self.test[indexPath.section]];
    NSMutableArray *muArray = [NSMutableArray arrayWithArray:[dic valueForKey:@"animals"]];
    NSLog(@"%@",muArray[1]);
    NSLog(@"%ld",indexPath.row);
    [muArray removeObjectAtIndex:indexPath.row];
  //  dic = [NSMutableDictionary]
    [tableView deleteRowsAtIndexPaths:@[indexPath]
                     withRowAnimation:UITableViewRowAnimationFade];
    
    //  셀지우기
   
a
}


-(BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath{

    return YES;

}
-(void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)sourceIndexPath toIndexPath:(NSIndexPath *)destinationIndexPath{


    

}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
//    UITableViewHeaderFooterView *section=[tableView headerViewForSection:indexPath.section];
//    
//  NSString *selectName=  section.textLabel.text;
//    

    
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
//    NSDictionary*dic= self.data[indexPath.section];
//    NSArray *arr=[dic objectForKey:@"animals"];
    
   // UITableViewCell *cell=;
   
    
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"빙고" message:[NSString stringWithFormat:@"%@가 나왔습니다.", [tableView cellForRowAtIndexPath:indexPath].textLabel.text] preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction *okBtn = [UIAlertAction actionWithTitle:@"확인" style:UIAlertActionStyleCancel handler:nil];
    
    [alertController addAction:okBtn];
    
    [self presentViewController:alertController animated:YES completion:Nil];
    
    
  }


-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    
    
    
    NSLog(@"%ld",self.data.count);
    return self.data.count;
    
    
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{


    NSDictionary *dic =self.data[section];
    
    
    NSArray  *arr =[dic objectForKey:@"animals"];
    
    
    return arr.count;
    



}



-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{

    UITableViewCell *cell;
    if(indexPath.row==0){
    cell=[tableView dequeueReusableCellWithIdentifier:@"SwichCell"];
        UISwitch *switchRolex;
    if(cell==nil){
        
        cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"SwitchCell"];
        switchRolex=[[UISwitch alloc]init];
        cell.accessoryView=switchRolex;
    }
        BOOL isOn=YES;
        [switchRolex setOn:isOn];
    }
    
    
    else{
        cell=[tableView dequeueReusableCellWithIdentifier:@"Cell"];
    if(cell==nil){
    
        cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"Cell"];
        

    
    }
    
    }
    NSDictionary *dic=self.data[indexPath.section];
    NSArray *array =[dic objectForKey:@"animals"];
  //  NSArray *imgs=[dic objectForKey:@"picture"];
   // NSArray *sub=[dic objectForKey:@"nickName"];
    
    cell.textLabel.text=[NSString stringWithFormat:@"%ld %@",indexPath.row,array[indexPath.row]];
    
    
   // cell.imageView.image=[UIImage imageNamed:imgs[indexPath.row]];
    
   // cell.detailTextLabel.text=[NSString stringWithFormat:@"%@",sub[indexPath.row]];
       return cell;
}

-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{

    NSDictionary *dic=self.data[section];
    
    return  [dic objectForKey:@"category"];

}

//swithrolex value change;



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
