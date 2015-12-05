//
//  playListDetailsCtrl.m
//  playlist
//
//  Created by mac on 05/12/15.
//  Copyright (c) 2015 GDNApp. All rights reserved.
//

#import "playListDetailsCtrl.h"
#import "playList.h"
#import <UIKit/UIKit.h>

@interface playListDetailsCtrl ()

@end

@implementation playListDetailsCtrl

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    if(self.playlist){
        self.artistImage.image  = self.playlist.playlistIconLarge;
        self.artistImage.backgroundColor = self.playlist.backgroundColor;
        self.titleArtist.text = self.playlist.playListTitle;
        self.descriptionArtist.text = self.playlist.playlistDescription;
        
        
        
        self.artist1.text = self.playlist.playlistArtists[0];
        
        self.artist2.text = self.playlist.playlistArtists[1];
        
       // self.artist3.text = self.playlist.playlistArtists[2];
        
        
        
        
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
