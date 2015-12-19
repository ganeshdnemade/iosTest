//
//  ViewController.m
//  MyGraph
//
//  Created by mac on 20/12/15.
//  Copyright (c) 2015 GDNApp. All rights reserved.
//

#import "ViewController.h"
#import "GraphView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    _scroller.contentSize = CGSizeMake(kDefaultGraphWidth, kGraphHeight);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(bool) shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation       {
    return YES;
}
@end
