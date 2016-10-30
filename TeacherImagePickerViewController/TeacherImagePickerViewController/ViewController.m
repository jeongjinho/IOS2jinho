//
//  ViewController.m
//  TeacherImagePickerViewController
//
//  Created by david on 2016. 10. 28..
//  Copyright © 2016년 david. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UIImagePickerControllerDelegate,UINavigationControllerDelegate>
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property NSUserDefaults *userDefaults;
@end

@implementation ViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSData *imageData = [[NSUserDefaults standardUserDefaults] objectForKey:@"image"];
    
    UIImage *image =[UIImage imageWithData:imageData];
    self.imageView.image = image;
    
}

- (IBAction)tabGestureAction:(id)sender
{
    UIAlertController *actionSheet = [UIAlertController alertControllerWithTitle:@"사진 가져오기" message:@"사진을 가져올 소스 선택" preferredStyle:UIAlertControllerStyleActionSheet];
    
    NSArray *actionTitle = @[@"사진 라이브러리", @"사진 앨범", @"카메라", @"취소"];
    
    __weak ViewController *weakSelf = self;
    
    void (^actionHandler)(UIAlertAction * _Nonnull action) = ^(UIAlertAction * _Nonnull action)
    {
        UIImagePickerControllerSourceType sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
        
        if ([[action title] isEqualToString:@"사진 앨범"])
        {
            sourceType = UIImagePickerControllerSourceTypeSavedPhotosAlbum;
        } else if ([[action title] isEqualToString:@"카메라"])
        {
            sourceType = UIImagePickerControllerSourceTypeCamera;
        }
        [weakSelf showImagePicker:sourceType];
    };
    
    for (NSString *title in actionTitle)
    {
        UIAlertActionStyle style = UIAlertActionStyleDefault;
        
        if ([title isEqualToString:@"취소"])
        {
            style = UIAlertActionStyleCancel;
        } else if ([title isEqualToString:@"카메라"])
        {
            // is available camera device?
            // if no -> continue;
            if ([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera] == NO)
            {
                continue;
            }
            style = UIAlertActionStyleDestructive;
        }
        UIAlertAction *action = [UIAlertAction actionWithTitle:title style:style handler:actionHandler];
        
        [actionSheet addAction:action];
    }
    
    [self presentViewController:actionSheet animated:YES completion:nil];
    
    
   
    
        
    

}
- (void)showImagePicker:(UIImagePickerControllerSourceType)sourceType
{
    UIImagePickerController *picker = [[UIImagePickerController alloc] init];
   
    
    [picker setDelegate:self];
    [picker setSourceType:sourceType];
    [picker setAllowsEditing:YES];
    [self presentViewController:picker animated:YES completion:nil];
    
    
    
    
}




-(void)imagePickerControllerDidCancel:(UIImagePickerController *)picker{


    [picker dismissViewControllerAnimated:YES completion:nil];
    
    
}

-(void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary<NSString *,id> *)info{


    UIImage *imaged = [info objectForKey:UIImagePickerControllerEditedImage];
    
    if(imaged ==nil){
    
    
        imaged = [info objectForKey:UIImagePickerControllerEditedImage];
    
    }
    
    if(imaged == nil){
    
        NSLog(@"사진이 없소");
        return;
    
    }
    //데이터변환
    NSData *imageData = UIImageJPEGRepresentation(imaged,1.0);
    
    NSUserDefaults *userD = [NSUserDefaults standardUserDefaults];
    [userD setObject:imageData forKey:@"image"];
    [userD synchronize];
    
    self.imageView.image=imaged;
    
    [picker dismissViewControllerAnimated:YES completion:^{
        
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"사진을 가져왔습니다." message:nil preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *cancel =[UIAlertAction actionWithTitle:@"확인" style:UIAlertActionStyleDefault handler:nil];
        [alert addAction:cancel];
        
        
        [self presentViewController:alert animated:YES completion:nil];
        
        
    }];

}
    //UIAlertAction 생성
//    UIAlertAction *libraryAction = [UIAlertAction actionWithTitle:@"라이브러리" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
//        
//    }];
//    
//    UIAlertAction *albumAction = [UIAlertAction actionWithTitle:@"사진앨범" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action)
//                                  {
//                                      
//                                  }];
//    UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"취소" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action)
//                                   {
//                                       NSLog(@"");
//                                   }];
//    
//    //Action 추가
//    [sheetAlert addAction:libraryAction];
//    [sheetAlert addAction:albumAction];
//    [sheetAlert addAction:cancelAction];
//    
//    //present
//    [self presentViewController:sheetAlert animated:YES completion:
//     ^{
//         NSLog(@"");
//     }];






    



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
