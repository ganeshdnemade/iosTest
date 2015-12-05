//
//  musicLibrary.h
//  playlist
//
//  Created by mac on 05/12/15.
//  Copyright (c) 2015 GDNApp. All rights reserved.
//

#import <Foundation/Foundation.h>
extern NSString *const kTitle ;
extern NSString *const kDescription ;
extern NSString *const kIcon ;
extern NSString *const kLargeIcon ;
extern NSString *const kBackgroundColor ;
extern NSString *const kArtists ;


@interface musicLibrary : NSObject
@property (nonatomic, retain) NSArray* library;
@end
