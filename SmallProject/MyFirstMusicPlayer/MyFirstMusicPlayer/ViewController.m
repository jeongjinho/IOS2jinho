//
//  ViewController.m
//  MyFirstMusicPlayer
//
//  Created by 진호정 on 2016. 9. 23..
//  Copyright © 2016년 iosSchool. All rights reserved.
//

#import "ViewController.h"
#import <AVFoundation/AVFoundation.h>
@interface ViewController () <AVAudioPlayerDelegate>

@property AVAudioPlayer *player;
@property UIButton      *playButton;
@property UILabel       *timeLabel;
@property NSTimer       *timer;


- (void) displayTime :(NSTimeInterval)currentTime
             duration:(NSTimeInterval)duration;

@end

@implementation ViewController

#pragma mark - Life cycle










- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    CGRect labelFrame =CGRectMake(30.0f, 30.0f, 250.f, 30.f);
    CGRect buttonFrame =CGRectMake(30.f, 70.f, 50.f, 30.f);
    
    self.playButton  =[[UIButton alloc] initWithFrame:buttonFrame];
    [self.playButton setTitle:@"Play" forState:UIControlStateNormal];
    [self.playButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    
    [self.playButton setTitle:@"Pause" forState:UIControlStateSelected];
    
    [self.playButton setTitleColor:[UIColor redColor] forState:UIControlStateSelected];
    [self.playButton setBackgroundColor:[UIColor blackColor]];
    
    
    [self.playButton addTarget:self action:@selector(clickPlayButton:) forControlEvents:UIControlEventTouchUpInside];
    
    
    [self.view addSubview:self.playButton];
    
    self.timeLabel = [[UILabel alloc] initWithFrame:labelFrame];
    
    [self.timeLabel setTextColor:[UIColor brownColor]];
    [self.view addSubview:self.timeLabel];
    
    [self displayTime:0 duration:0];
    
    NSURL *sounFileURL = [[NSBundle mainBundle] URLForResource:@"sound"withExtension:@"mp3"];
    
    self.player = [[AVAudioPlayer alloc] initWithContentsOfURL:sounFileURL error:nil];
    
    [self.player setDelegate:self];
     
}


#pragma mark -Button Methods


- (void)displayTime:(NSTimeInterval)currentTime duration:(NSTimeInterval)duration{
    
    NSInteger currentMin = (NSInteger)(currentTime / 60.0);
    NSInteger currentSec = ((NSInteger)currentTime % 60);
    NSInteger durationMin = (NSInteger)(duration / 60.0);
    NSInteger durationSec = ((NSInteger)duration % 60);
    
    
    NSString *timeString = [[NSString alloc] initWithFormat:@"%02ld:%02ld/%02ld %02ld",currentMin,currentSec,durationMin,durationSec];
    
    [self.timeLabel setText:timeString];
    
}

#pragma mark -clickButton Methods

- (void)clickPlayButton:(UIButton *)sender {
    
    [sender setSelected:!sender.selected];
    
    
    if(sender.isSelected ==YES){
        
        
        
        [self.player play];
        self.timer =[NSTimer scheduledTimerWithTimeInterval:1.0f target:self selector:@selector(checkTime) userInfo:nil repeats:YES];
        
        [self.timer fire];
        
        
        
    }
    else{
        
        [self.player pause];
        [self.timer invalidate];
        //[self displayTime:0 duration:self.player.duration];
        self.timer=nil;
        
        
    }
    
    
}


- (void)checkTime{
    
    
    if ((self.player.duration>0) && (self.player.currentTime >0)){
        
        
        [self displayTime: self.player.currentTime duration:self.player.duration];
        
        
    }
    return;
    
}

//- (void)audioPlayerDecodeErrorDidOccur:(AVAudioPlayer *)player error:(NSError *)error {
//    
//    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"알림" message:@"음원 파일을 제가 실행했습니다." preferredStyle:
//                                
//

#pragma mark -AVAudioPlayerDelegate  Methods

-(void)audioPlayerDecodeErrorDidOccur:(AVAudioPlayer *)player error:(NSError *)error {


    UIAlertController *alert =[UIAlertController alertControllerWithTitle:@"알림" message:@"음원 파일을 디코딩하는데 문제가 발생했습니다." preferredStyle:UIAlertControllerStyleAlert];
    
    [alert addAction:[UIAlertAction actionWithTitle:@"확인" style:UIAlertActionStyleDefault handler:nil]];
     
     
     [self presentViewController: alert animated:YES completion:^{NSLog(@"decode error occured : %@",error.localizedDescription);}];
    



}



- (void)audioPlayerDidFinishPlaying:(AVAudioPlayer *)player successfully:(BOOL)flag{

    NSLog(@"음악재생이 종료됨");
    
    [self displayTime:0 duration:self.player.duration];
    
    [self.playButton setSelected:NO];
    


}




@end
