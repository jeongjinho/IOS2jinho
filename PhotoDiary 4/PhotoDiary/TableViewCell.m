//
//  TableViewCell.m
//  PhotoDiary
//
//  Created by 진호정 on 2016. 10. 24..
//  Copyright © 2016년 iosSchool. All rights reserved.
//

#import "TableViewCell.h"

@implementation TableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
    
    
}

-(void)setAccessoryType:(UITableViewCellAccessoryType)accessoryType{




    self.accessoryType=UITableViewCellAccessoryDisclosureIndicator;


}
- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
