//
//  WebViewController.h
//  BlogReader
//
//  Created by mac on 13/12/15.
//  Copyright (c) 2015 GDNApp. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WebViewController : UIViewController
@property (strong, nonatomic) IBOutlet UIWebView *webView;
@property (strong, nonatomic) NSURL *blogPostURL;
 
@end
