//
//  playListDetailsCtrl.h
//  playlist
//
//  Created by mac on 05/12/15.
//  Copyright (c) 2015 GDNApp. All rights reserved.
//

#import <UIKit/UIKit.h>
@class playList;
@interface playListDetailsCtrl : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *playListDetailLabel;
@property (weak, nonatomic) NSString *strLabel;

@property (strong, nonatomic) playList *playlist;

@end
