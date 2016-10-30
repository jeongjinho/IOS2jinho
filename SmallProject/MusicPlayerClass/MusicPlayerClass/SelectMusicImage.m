//
//  SelectMusicImage.m
//  MusicPlayerClass
//
//  Created by 진호정 on 2016. 10. 15..
//  Copyright © 2016년 iosSchool. All rights reserved.
//

#import "SelectMusicImage.h"
@interface SelectMusicImage()


@end
@implementation SelectMusicImage



- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
    }
    return self;
}

-(void)layoutSubviews{

    [super layoutSubviews];
    [self updateLayout];


}

-(void)updateLayout{


    self.selectMusisPicture.frame=self.bounds;

}
-(void)setMusicAlbumImages:(NSString *)image{

    self.selectMusisPicture.image=[UIImage imageNamed:image];
    
}
@end
