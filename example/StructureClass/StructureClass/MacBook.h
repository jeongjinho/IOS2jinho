//
//  MacBook.h
//  StructureClass
//
//  Created by 진호정 on 2016. 9. 19..
//  Copyright © 2016년 iosSchool. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MacBook : NSObject



@property id cpuClock;
@property id displayType;
@property id ScreenInch;
@property id assembledNation;
@property id coverColor;
@property id ram;
@property id macAddress;
@property id brightness;



- (id)bootOn;
- (id)bootOff;
- (id)playMusic;
- (id)onTheKeyBoardLigth;
- (id)controlBrightness;
- (id)controlDisplaySize;
- (id)executeApplication;
- (id)closeWindow;
- (id)selectOS;


@end
