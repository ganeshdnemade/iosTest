//
//  playList.h
//  playlist
//
//  Created by mac on 05/12/15.
//  Copyright (c) 2015 GDNApp. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface playList : NSObject
@property (strong, nonatomic) NSString *playListTitle;
@property (strong, nonatomic) NSString *playlistDescription;
@property (strong, nonatomic) UIImage *playlistIcon;
@property (strong,nonatomic) UIImage    *playlistIconLarge;
@property (strong,nonatomic) NSArray *playlistArtists;
@property (strong,nonatomic) UIColor *backgroundColor;
@property (strong, nonatomic) NSArray *library;
-(instancetype) initWithIndex:(NSUInteger)index;

@end
