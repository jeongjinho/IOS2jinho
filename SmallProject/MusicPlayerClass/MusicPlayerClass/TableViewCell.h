//
//  TableViewCell.h
//  MusicPlayerClass
//
//  Created by 진호정 on 2016. 10. 14..
//  Copyright © 2016년 iosSchool. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableViewCell : UITableViewCell
@property UIImageView *albumImage;

-(void)layoutSubviews;
//-(void)updateLayout;
-(void)AlbumImageName:(NSString *)name;
-(void)setTitleLabel:(NSString *)title;
-(void)setSinger:(NSString *)singerName;
-(void)setTimeString:(NSString*)time;
@end
