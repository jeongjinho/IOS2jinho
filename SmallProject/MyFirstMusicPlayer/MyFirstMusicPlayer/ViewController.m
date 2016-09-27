//
//  ViewController.m
//  MyFirstMusicPlayer
//
//  Created by 진호정 on 2016. 9. 23..
//  Copyright © 2016년 iosSchool. All rights reserved.
//

#import "ViewController.h"
#import <AVFoundation/AVFoundation.h>
//헤더파일에 있는 property들은 숨기기위해 .m파일 안으로 끌고왔다.
@interface ViewController () <AVAudioPlayerDelegate>

@property AVAudioPlayer *player;//AVAudioPlayer객체타입의 player라는 property
@property UIButton  *playButton;//UIButton객체타입의 playerButton라는 property
@property UILabel   *timeLabel;//UILabel객체타입의 timeLabel라는 property
@property NSTimer    *timer;//UITimer객체타입의 timer라는 property

//여기까지가 끌고 온것듯




//displayTime duration이라는 메소드를 선언한다.
- (void) displayTime :(NSTimeInterval)currentTime
             duration:(NSTimeInterval)duration;

@end
//여기까지가 끌고 온것듯




//본격적인 구현부
@implementation ViewController
//이것은 코드를 찾을 때 편하게 쓰기위하여!
#pragma mark - Life cycle









//viewDidLoad라는 UIViewController의 상속된 메소드에서  super로 viewDidLoad의 초기화하고 추가적으로 로드될때의 동작들을 정의해놓는 곳  부모클래스의 메소드에 다가 필요한것을 추가해서 쓰는것 이것은 바로 재정의!!!
- (void)viewDidLoad {
    [super viewDidLoad];
    
    //CGRect 타입에 labelFrame변수와 buttonFrame에   CGRectMake 메소드를 써서 네모의 모서리 네곳의 좌표를 가져오는것 같은데 메소드는 []로해야하는데 메소드이름()이것으로 왜 하는지 모르겠다.
    CGRect labelFrame =CGRectMake(30.0f, 30.0f, 250.f, 30.f);
    CGRect buttonFrame =CGRectMake(30.f, 70.f, 50.f, 30.f);
    
    
    //ViewController객체에 자신의 playButton 프로퍼티에다가 UIButton클래스로 메모리에 할당을 하고 초기화메서드로 initWitFrame를 사용한다.frame을 초기화 할때 CGRect타입에 매개변수가 들어가야하나보다
    self.playButton  =[[UIButton alloc] initWithFrame:buttonFrame];
    
    
    //객체자신의 playButton객체 프로퍼티에 UIButton클래스  setTitle forState메소드 사용하여  첫번째 매개변수타입으로 NSString을 사용하며 forState는 상태인거 같은데 저건잘모르겠다. 아래 selected도 있는거보니 normal을 눌리기 전 상태를 말하는거 같긴하다.
    [self.playButton setTitle:@"Play" forState:UIControlStateNormal];
    
    
    //객체자신의 playButton객체 프로퍼티에 UIButton클래스  setTitleColor forState라는 이름에 메소드를 호출하고 매개변수로 []인거보니 UIColor클래스에서 whiteColor라는 메소드를 호출하는거 같은데 UIColor는 객체가 아니라 클래스인데 호출인지 정확하진 않은거 같다. 일단들어가면 whiteColor라는 프로퍼티가 있는데  whiteColor라는 메소드도있고 잘모르겠다 젠장 [객체 메소드]는 알겠는데 [클래스 메소드]는첨봐서 주말에 공부해야겠다
    
    
    //setTitle forState 매개변수로   버튼에 들어갈 문자와 어떤상태에 보일지에대란 상태를 매개변수를 갖는 메서드이다.
    //playButton객체 프로퍼티에 @"Pause"라는 Title을 넣고  눌려졌을 때가 상태 매개변수로갖는 것을 볼 수 있다.
    [self.playButton setTitle:@"Pause" forState:UIControlStateSelected];
    
    
    //playButton객체 프로퍼티에 버튼  title 즉 위에 Pause에 색깔을 입히는것  상태를 selected로 준 것을 보니 버튼이눌렸을때 Pause라는 빨간색 글자로 바뀔거 같당.
    // setTitleColor에 매겨변수로 UIColor 클래스메서드를 사용해서 색을 반환
    [self.playButton setTitleColor:[UIColor redColor] forState:UIControlStateSelected];
    
   // [self.playButton setTitleShadowColor:[UIColor orangeColor]forState:UIControlStateSelected];
    
    //눌렀을 때 버튼의색깔을 바꾸려면 어떻게 해야할까?
   // [playButton setBackgroundColor:[UIColor orangeColor] forState:
    // UIControlStateSelected];
    [self.playButton setBackgroundColor:[UIColor blueColor]];
    
   
    //playButton객체 프로퍼티에 addTarget은 누르게될 타겟 객체 설정하는 것 같다.
    // self라는 타겟을  forControlEvents 에서 가져온 TouchUpInside이 라면 clickPlayButton메서드를 호출하라는 것 같다.
    //
    [self.playButton addTarget:self action:@selector(clickPlayButton:) forControlEvents:UIControlEventTouchUpInside];
    
    // 자기자신의 뷰에  자신의 playButton객체 프로퍼티를 view 위에 올리는 것
    [self.view addSubview:self.playButton];
    //
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
