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

@property (weak, nonatomic) IBOutlet UIImageView *artistImage;
@property (weak, nonatomic) IBOutlet UILabel *titleArtist;
@property (weak, nonatomic) IBOutlet UILabel *descriptionArtist;

@property (strong, nonatomic) playList *playlist;
@property (weak, nonatomic) IBOutlet UILabel *artist1;
@property (weak, nonatomic) IBOutlet UILabel *artist2;
@property (weak, nonatomic) IBOutlet UILabel *artist3;

@end
