//
//  playList.m
//  playlist
//
//  Created by mac on 05/12/15.
//  Copyright (c) 2015 GDNApp. All rights reserved.
//

#import "playList.h"
#import "musicLibrary.h"

@implementation playList


- (instancetype)initWithIndex:(NSUInteger)index
{
    self = [super init];
    if (self) {
//        <#statements#>
        musicLibrary *musiclib = [[musicLibrary alloc] init];
        NSArray *library = musiclib.library;
        
        NSDictionary *playlistDictionary = library[index];
        
        _playListTitle  = [playlistDictionary objectForKey:kTitle];
        _playlistDescription = [playlistDictionary objectForKey:kDescription];
        _playlistIcon = [UIImage imageNamed:[playlistDictionary objectForKey:kIcon]];
        _playlistIconLarge = [UIImage imageNamed:[playlistDictionary objectForKey:kLargeIcon]];
        _playlistArtists = [NSArray arrayWithArray:[playlistDictionary objectForKey:kArtists]];
        
        NSDictionary *colorDictionary = [playlistDictionary objectForKey:kBackgroundColor];
        _backgroundColor = [self rbgColorFromDictionary:colorDictionary];
                           
        
    }
    return self;
}

-(UIColor *)rbgColorFromDictionary:(NSDictionary *) colorDictionary{
    CGFloat red = [[colorDictionary objectForKey:@"red"] doubleValue];
    CGFloat green = [[colorDictionary objectForKey:@"green"] doubleValue];
    CGFloat blue = [[colorDictionary objectForKey:@"blue"] doubleValue];
    CGFloat alpha = [[colorDictionary objectForKey:@"alpha"] doubleValue];
    
    return [UIColor colorWithRed:red/255.0 green:green/255.0 blue:blue/255.0 alpha:alpha];
    
}


@end
