//
//  ViewController.m
//  MusicPlayerClass
//
//  Created by 진호정 on 2016. 10. 14..
//  Copyright © 2016년 iosSchool. All rights reserved.
//

#import "ViewController.h"
#import "TableViewCell.h"
#import "SelectMusicImage.h"
@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>

@property  UIImageView *frontImageWidow;
@property  UITableView  *bottomtableView;
@property  NSArray      *dataList;
@property  BOOL         isEditing;
@property  UIBarButtonItem *editButton;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.isEditing =NO;
    //editbutton add at navigationVar
    self.editButton = [[UIBarButtonItem alloc]initWithTitle:@"edit" style:UIBarButtonItemStylePlain target:self action:@selector(onClickedEditButton:)];
    [self.navigationItem setRightBarButtonItem:self.editButton];
    
    
    //data
    self.dataList = @[@{@"singer":@"justin Biber",@"title":@"love your Self",@"albumPicture":@"justinbiber",@"playTime":@"03:42"},
         @{@"singer":@"김동률",@"title":
               @"감사",@"albumPicture":@"kimdongreul",@"playTime":@"04:12"},
        @{@"singer":@"40",@"title":@"듣는편지",@"albumPicture":@"40",@"playTime":@"04:27"},
                      @{@"singer":@"이하이",@"title":@"한숨",@"albumPicture":@"leehi",@"playTime":@"04:34"},@{@"singer":@"justin Biber",@"title":@"love your Self",@"albumPicture":@"justinbiber",@"playTime":@"03:42"},
                      @{@"singer":@"김동률",@"title":
                            @"감사",@"albumPicture":@"kimdongreul",@"playTime":@"04:12"},
                      @{@"singer":@"40",@"title":@"듣는편지",@"albumPicture":@"40",@"playTime":@"04:27"},
                      @{@"singer":@"이하이",@"title":@"한숨",@"albumPicture":@"leehi",@"playTime":@"04:34"}
                      ];
    
    
    
    
    
    //create frontImageWidow;
    
    self.frontImageWidow = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 300)];
    
    [self.frontImageWidow layoutSubviews];
    
    [self.view addSubview:self.frontImageWidow];
    //creat UITableView
    
    self.bottomtableView = [[UITableView alloc] initWithFrame:CGRectMake(0,300, self.view.frame.size.width, self.view.frame.size.width) style:UITableViewStylePlain];
    
    self.bottomtableView.delegate =self;
    self.bottomtableView.dataSource = self;
    [self.bottomtableView layoutSubviews];
    [self.view addSubview:self.bottomtableView];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
    
    
    

}

//when you cliked editButton 
-(void)onClickedEditButton:(UIBarButtonItem*)sender{

     if(!self.isEditing){

         [self.bottomtableView setEditing:YES animated:YES];
         self.isEditing=YES;
         [self.bottomtableView layoutSubviews];
         
     }else{
     
         [self.bottomtableView setEditing:NO animated:YES];
         self.isEditing=NO;
         [self.bottomtableView layoutSubviews];

     }
   
}
//whether I can eidit row or not
-(BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath{



    return YES;

}
// select eiditButton Style
-(UITableViewCellEditingStyle)tableView:(UITableView *)tableView editingStyleForRowAtIndexPath:(NSIndexPath *)indexPath{


    return UITableViewCellEditingStyleDelete;

}

-(void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath{


    NSMutableArray *tempDataList =[NSMutableArray arrayWithArray:self.dataList];
    [tempDataList removeObject:self.dataList[indexPath.row]];
    self.dataList=tempDataList;
    [tableView deleteRowsAtIndexPaths:@[indexPath]
                     withRowAnimation:UITableViewRowAnimationFade];
    


}

//if editbutton pushed  addly moveeditStyle add
-(BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath{
    
    return YES;
    
}
-(void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)sourceIndexPath toIndexPath:(NSIndexPath *)destinationIndexPath{
    
}


// define sectionNuber;
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{

    
    return 1;
    

}
// define rowForSection;
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{


    
    return self.dataList.count;

}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{


    return 80.0f;

}
// if selected UITableCell
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    NSDictionary *albumInfo = self.dataList[indexPath.row];
    
    
    self.frontImageWidow.image=[UIImage imageNamed:[albumInfo objectForKey:@"albumPicture"]];
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    

}
//defien cell  info

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{

    TableViewCell *cell =[tableView dequeueReusableCellWithIdentifier:@"Cell"];
    
    if(cell==nil){
    
        cell=[[TableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"Cell"];
       
    
    }
     NSDictionary *musicInfo =self.dataList[indexPath.row];
    [cell AlbumImageName:[musicInfo objectForKey:@"albumPicture"]];
    [cell setTimeString:[musicInfo objectForKey:@"playTime"]];
    [cell setSinger:[musicInfo objectForKey:@"singer"]];
    [cell setTitleLabel:[musicInfo objectForKey:@"title"]];
    
     [cell layoutSubviews];
//    NSDictionary *musicInfo =self.dataList[indexPath.row];
//    
//    //input albumPicture
//    cell.imageView.image = [UIImage imageNamed:[musicInfo objectForKey:@"albumPicture"]];
//    //input title
//    cell.textLabel.text =[musicInfo objectForKey:@"title"];
//    //input singer
//    cell.detailTextLabel.text=[musicInfo objectForKey:@"singer"];
//    // input playTime
    
    return cell;
}
@end
