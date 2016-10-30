//
//  MusicCell.m
//  MusicPlayerClass
//
//  Created by 진호정 on 2016. 10. 14..
//  Copyright © 2016년 iosSchool. All rights reserved.
//

#import "MusicCell.h"
@interface MusicCell()

@property  UIImageView *backgroundImage;
@property  UILabel *title;
@end
@implementation MusicCell

//- (void)awakeFromNib {
//    [super awakeFromNib];
//    // Initialization code
//}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    
    
    // Configure the view for the selected state
}


//this is init UITableViewCell
-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{

    self= [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    
    if(self){
    
        [self CreateMusicCell];
    
    }

    return self;
}

//this is create musicCell
-(void)CreateMusicCell{


    self.backgroundImage=[[UIImageView alloc]init];
    [self addSubview:self.backgroundImage];
    
    
    self.title= [[UILabel alloc]init];
    [self ]
    self.accessoryView=[[UIView alloc] init];
    

    
}
@end
