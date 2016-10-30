//
//  ViewController.m
//  AlertContoller
//
//  Created by 진호정 on 2016. 10. 27..
//  Copyright © 2016년 iosSchool. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}



- (IBAction)touchInSideAlertButton:(id)sender{

//    UIButton *btn= sender;
//    
//    if(btn.tag==0){
//    
//    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Alert!" message:@"버튼을 눌렀어요" preferredStyle:UIAlertControllerStyleAlert];
//    
//    UIAlertAction *completeButton = [UIAlertAction actionWithTitle:@"확인" style:UIAlertActionStyleDefault handler:nil];
//     UIAlertAction *cancleButton = [UIAlertAction actionWithTitle:@"취소" style:UIAlertActionStyleCancel handler:nil];
//        
//    [alert addAction:cancleButton];
//    [alert addAction:completeButton];
//        
//        [self presentViewController:alert animated:YES completion:nil];
//    } else{
//    
//    
//        UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Alert!" message:@"버튼을 눌렀어요" preferredStyle:UIAlertControllerStyleActionSheet];
//        
//        UIAlertAction *completeButton = [UIAlertAction actionWithTitle:@"확인" style:UIAlertActionStyleDefault handler:nil];
//        UIAlertAction *cancleButton = [UIAlertAction actionWithTitle:@"취소" style:UIAlertActionStyleCancel handler:nil];
//        
//        
//        [alert addAction:completeButton];
//        [alert addAction:cancleButton];
//        
//     [self presentViewController:alert animated:YES completion:nil];
//    
//    }
//    
    
    
    UIButton*btn = sender;
    
    if(btn.tag==0){
    
        [self show:UIAlertControllerStyleAlert];
    
    
    }else{
    
    
        [self show:UIAlertControllerStyleActionSheet];
        }
    

}



- (void)show: (UIAlertControllerStyle)style{


    
    void (^handlerBlock)(UIAlertAction*) = ^(UIAlertAction * _Nonnull action){
        
        
        
        if([action.title isEqualToString:@"취소"]){
        
        
            NSLog(@"취소핸들러가 실행되었습니다.");
        
        }else if([action.title isEqualToString:@"확인"]){
        
        
            NSLog(@"확인핸들러가 실행되었습니다.");
        
        }else{
        
        
            NSLog(@"디폴트핸들러가 실행되었습니다.");
        
        }
        
    };

    
    UIAlertController *alert = nil;
    alert = [UIAlertController alertControllerWithTitle:@"타이틀" message:@"스타일" preferredStyle:style];
    
    UIAlertAction *cansle = [UIAlertAction actionWithTitle:@"취소" style:UIAlertActionStyleCancel handler:handlerBlock];
    [alert addAction:cansle];
    UIAlertAction *cansle2 = [UIAlertAction actionWithTitle:@"확인" style:UIAlertActionStyleDefault handler:handlerBlock];    [alert addAction:cansle2];
    UIAlertAction *cansle3 = [UIAlertAction actionWithTitle:@"디폴트" style:UIAlertActionStyleDestructive handler:handlerBlock];    [alert addAction:cansle3];
    
    // [cansle2 setValue:[UIColor orangeColor] forKey:@"titleTextColor"];
    
    [alert.view setTintColor:[UIColor greenColor]];
    [self presentViewController:alert animated:YES completion:nil];

    
    switch (style) {
        case UIAlertControllerStyleAlert:
//            break;//안한이유?
        case UIAlertControllerStyleActionSheet:
        
            break;
        default:
            NSLog(@"스타일입력이 잘못되었습니다.");
            return;
            break;
    }



}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
