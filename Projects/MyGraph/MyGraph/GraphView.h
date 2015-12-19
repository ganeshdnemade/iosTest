//
//  GraphView.h
//  MyGraph
//
//  Created by mac on 20/12/15.
//  Copyright (c) 2015 GDNApp. All rights reserved.
//

#import <UIKit/UIKit.h>

#define kGraphHeight 300
#define kDefaultGraphWidth 900
#define kOffsetX 10
#define kStepX 70
#define kGraphBottom 300
#define kGraphTop 0


#define kStepY 70
#define kOffsetY 10
#define kGraphLeft 10

#define kBarTop 10
#define kBarWidth 40
 


@interface GraphView : UIView
-(void)drawBar:(CGRect)rect context:(CGContextRef)ctx;



@end
