//
//  ForIn.m
//  ForInClass
//
//  Created by 진호정 on 2016. 10. 4..
//  Copyright © 2016년 iosSchool. All rights reserved.
//

#import "ForIn.h"

@implementation ForIn


+(NSString *)findAlbumTitle :(NSDictionary*)dic{


    if(dic!=nil){
    
    NSMutableArray *info=  [dic objectForKey:@"album_info" ];
    NSString *title =[info valueForKey:@"title"];
    
        return title;
        
    }
    
    return nil;

}
+(NSArray*)songTitles:(NSDictionary*)dic{

    NSMutableArray *titles=[[NSMutableArray alloc] init];
     NSMutableArray *info=   [dic objectForKey:@"song_list" ];
    NSString *name;
    for(NSDictionary  *song in info){
        
        
        name =[song valueForKey:@"name"];
        
        [titles addObject:name];
       
        
    
    
    }
    
    return titles;


}

+(NSArray*)songDatas:(NSDictionary*)dic{


    NSMutableArray *list= [dic objectForKey:@"song_list"];
    NSMutableArray *songsData=[[NSMutableArray alloc]init];
    for(NSDictionary *songinfo in list){
    
    
        NSDictionary *data=[songinfo valueForKey:@"song_info"];
    
        [songsData addObject:data];
    
    }
    
   
    
    



    return songsData;

}

+(NSString*)lyricWithData:(NSDictionary*)dic  name:(NSString*) name{


    NSMutableArray *songlist = [dic objectForKey:@"song_list"];
    
    NSDictionary *songinfo;
    NSString *lyrics;
    for(NSDictionary *song in songlist){
    
        if( [name isEqualToString:[song valueForKey:@"name"]]){
            
            
            songinfo=[song objectForKey:@"song_info"];
            
            lyrics=[songinfo valueForKey:@"lyrics"];
            
            
            return lyrics;
            }
        
        else{
        
        
            NSLog(@"찾는 곡이 없습니다.");
        
            }
        }
    
    return nil;

    
    }
    
+(NSDate*)playTimeWithData:(NSDictionary*)dic name:(NSString *)name{


    NSMutableArray *songlist = [dic objectForKey:@"song_list"];
    
    NSDate *playTime;
       for(NSDictionary *song in songlist){
        
        if( [name isEqualToString:[song valueForKey:@"name"]]){
            
            
            
             playTime= [song valueForKey:@"total_play_time"];
            
            return playTime;
            
        }
        
        else{
            
            
            NSLog(@"찾는 곡이 없습니다.");
            
        }
    }
    
    return nil;
    
    
}



@end
