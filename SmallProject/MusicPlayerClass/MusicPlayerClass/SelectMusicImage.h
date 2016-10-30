//
//  SelectMusicImage.h
//  MusicPlayerClass
//
//  Created by 진호정 on 2016. 10. 15..
//  Copyright © 2016년 iosSchool. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SelectMusicImage : UIImageView
@property UIImageView *selectMusisPicture;
@property NSInteger aa;
-(void)layoutSubviews;
-(void)setMusicAlbumImages:(NSString *)image;
-(void)creatWindow;
@end
