//
//  DetailViewController.h
//  blogMasterList
//
//  Created by mac on 12/12/15.
//  Copyright (c) 2015 GDNApp. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;
@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

@end

