//
//  NewEntryViewController.m
//  Diary
//
//  Created by mac on 13/12/15.
//  Copyright (c) 2015 GDNApp. All rights reserved.
//

#import "NewEntryViewController.h"

@interface NewEntryViewController ()

@end

@implementation NewEntryViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)dismissSelf{
    [self.presentingViewController dismissViewControllerAnimated:YES completion:nil];
}
- (IBAction)doneWasPressed:(id)sender {
    [self dismissSelf];
}
- (IBAction)cancelWasPressed:(id)sender {
    [self dismissSelf];
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
