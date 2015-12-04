//
//  ViewController.m
//  playlist
//
//  Created by mac on 05/12/15.
//  Copyright (c) 2015 GDNApp. All rights reserved.
//

#import "playListMasterCtrl.h"
#import "playListDetailsCtrl.h"

@interface playListMasterCtrl ()

@end

@implementation playListMasterCtrl

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self.aBtn setTitle:@"Press" forState:(UIControlStateNormal)];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if([segue.identifier isEqual:@"showPlayListDetail"]){
        NSLog(@"Clicked segue");
        playListDetailsCtrl *playlistdetailsctrl = (playListDetailsCtrl *)segue.destinationViewController;
        
        playlistdetailsctrl.strLabel  = @"ganesh";
    }
    
}

@end
