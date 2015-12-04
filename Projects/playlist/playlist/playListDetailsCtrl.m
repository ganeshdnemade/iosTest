//
//  playListDetailsCtrl.m
//  playlist
//
//  Created by mac on 05/12/15.
//  Copyright (c) 2015 GDNApp. All rights reserved.
//

#import "playListDetailsCtrl.h"

@interface playListDetailsCtrl ()

@end

@implementation playListDetailsCtrl

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self.view setBackgroundColor:[UIColor greenColor]];
    self.playListDetailLabel.text = self.strLabel;
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
