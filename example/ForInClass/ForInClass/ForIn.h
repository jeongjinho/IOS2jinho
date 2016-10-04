//
//  ForIn.h
//  ForInClass
//
//  Created by 진호정 on 2016. 10. 4..
//  Copyright © 2016년 iosSchool. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ForIn : NSObject






+(NSString *)findAlbumTitle :(NSDictionary*)dic;
+(NSArray*)songTitles:(NSDictionary*)dic;
+(NSArray*)songDatas:(NSDictionary*)dic;
+(NSString*)lyricWithData:(NSDictionary*)dic  name:(NSString*) name;
+(NSDate*)playTimeWithData:(NSDictionary*)dic name:(NSString *)name;

@end
