//
//  musicLibrary.m
//  playlist
//
//  Created by mac on 05/12/15.
//  Copyright (c) 2015 GDNApp. All rights reserved.
//

#import "musicLibrary.h"

NSString *const kTitle = @"title";
NSString *const kDescription = @"description";
NSString *const kIcon = @"icon";
NSString *const kLargeIcon = @"largeIcon";
NSString *const kBackgroundColor = @"backgroundColor";
NSString *const kArtists = @"artists";
@implementation musicLibrary

- (instancetype)init
{
    self = [super init];
    if (self) {
//        <#statements#>
        
        _library = @[@{
                             
                          kTitle:@"Rise and Shine",
                          kDescription:@"Get your morning going by singing",
                          kIcon:@"coffee.png",
                          kLargeIcon:@"coffee_large.png",
                          kBackgroundColor:@{@"red":@255.0, @"green":@204.0, @"blue":@51.0, @"alpha":@1.0},
                          kArtists:@[@"American Authors", @"Vacationer"]
                          },
                         @{
                             
                             kTitle:@"1--Rise and Shine",
                             kDescription:@"1--Get your morning going by singing",
                             kIcon:@"u2.png",
                             kLargeIcon:@"u2_large.png",
                             kBackgroundColor:@{@"red":@255.0, @"green":@204.0, @"blue":@51.0, @"alpha":@1.0},
                             kArtists:@[@"American Authors", @"Vacationer"]
                             },
                         @{
                             
                             kTitle:@"Rise and Shine",
                             kDescription:@"Get your morning going by singing",
                             kIcon:@"mltr.png",
                             kLargeIcon:@"mltr_large.png",
                             kBackgroundColor:@{@"red":@255.0, @"green":@204.0, @"blue":@51.0, @"alpha":@1.0},
                             kArtists:@[@"American Authors", @"Vacationer"]
                             },
                         @{
                             
                             kTitle:@"Rise and Shine",
                             kDescription:@"Get your morning going by singing",
                             kIcon:@"ba.png",
                             kLargeIcon:@"ba_large.png",
                             kBackgroundColor:@{@"red":@255.0, @"green":@204.0, @"blue":@51.0, @"alpha":@1.0},
                             kArtists:@[@"American Authors", @"Vacationer"]
                             }];
    }
    return self;
}

@end
