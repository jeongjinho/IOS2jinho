//
//  MusicCell.h
//  MusicPlayerClass
//
//  Created by 진호정 on 2016. 10. 14..
//  Copyright © 2016년 iosSchool. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MusicCell : UITableViewCell


-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier;
-(void)CreateMusicCell;
@end
