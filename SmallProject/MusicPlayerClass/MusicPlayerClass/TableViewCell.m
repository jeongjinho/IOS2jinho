//
//  TableViewCell.m
//  MusicPlayerClass
//
//  Created by 진호정 on 2016. 10. 14..
//  Copyright © 2016년 iosSchool. All rights reserved.
//

#import "TableViewCell.h"
@interface TableViewCell()
@property UILabel *time;
@property UIView  *coverView;
@property (nonatomic) UILabel *title;
@property UILabel *singerName;;



@end

@implementation TableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{

    self=[super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if(self){
    
        [self create];
    
    }
    

return self;
}


-(void)create{


//    
//    self.albumImage=[[UIImageView alloc]init];
//    //self.albumImage.contentMode=UIViewContentModeScaleToFill;
//    //self.albumImage.clipsToBounds=YES;
//    [self addSubview:self.albumImage];
//    self.albumImage.image=[[UIImage alloc]init];
//    

    
    
    self.albumImage=[[UIImageView alloc] init];
   // self.albumImage.contentMode=UIViewContentModeScaleToFill;
    self.albumImage.clipsToBounds=YES;
    [self.contentView addSubview:self.albumImage];
    
    self.title = [[UILabel alloc] init];
    [self.contentView addSubview:self.title];
    
    
    self.singerName = [[UILabel alloc] init];
    self.singerName.textColor= [UIColor grayColor];
    self.singerName.font = [UIFont systemFontOfSize:16.0f];
    [self.contentView addSubview:self.singerName];
    
    self.time = [[UILabel alloc] init];
    self.time.textAlignment=NSTextAlignmentCenter;
    self.time.textColor=[UIColor grayColor];
    self.time.font=[UIFont systemFontOfSize:14.0f];
    [self.contentView addSubview:self.time];
    




}

-(void)updateLayout{
    
    
    
    self.albumImage.frame =CGRectMake(0, 0, self.frame.size.width/5, self.frame.size.height);
    self.title.frame=CGRectMake(self.frame.size.width/5+20, 10,self.frame.size.width-100, self.frame.size.height*2/3);
    self.singerName.frame=CGRectMake(self.frame.size.width/5+20, 45, self.frame.size.width-100, self.frame.size.height- self.frame.size.height*2/3);
    self.time.frame=CGRectMake(self.frame.size.width-60, 0,self.frame.size.width-self.frame.size.width+85, self.frame.size.height);
    
    
    
}


-(void)layoutSubviews{


    [super layoutSubviews];
    [self updateLayout];
    

}

-(void)AlbumImageName:(NSString *)name{

    self.albumImage.image= [UIImage imageNamed:name];
}
-(void)setTitleLabel:(NSString *)title{

    self.title.text=title;

}
-(void)setSinger:(NSString *)singerName{

    self.singerName.text=singerName;

}
-(void)setTimeString:(NSString*)time{

    self.time.text=time;

}
@end
