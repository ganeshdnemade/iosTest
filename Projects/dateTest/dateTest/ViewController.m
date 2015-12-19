//
//  ViewController.m
//  dateTest
//
//  Created by mac on 13/12/15.
//  Copyright (c) 2015 GDNApp. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSDate *today = [NSDate date];
    NSLog(@"%@", today);
    
    NSTimeInterval secondsPerDay = 60 * 60 * 24;
    NSDate *tomorrow = [NSDate dateWithTimeIntervalSinceNow:-secondsPerDay];
    NSLog(@"yesterday:%@", tomorrow);
    
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc]init];
    [dateFormatter setDateFormat:@"EE MMM, dd"];
    
    NSString *todayString = [dateFormatter stringFromDate:today];
    NSLog(@"formatted today: %@", todayString);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
