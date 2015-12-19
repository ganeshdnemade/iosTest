//
//  GraphView.m
//  MyGraph
//
//  Created by mac on 20/12/15.
//  Copyright (c) 2015 GDNApp. All rights reserved.
//

#import "GraphView.h"

@implementation GraphView


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextSetLineWidth(context, 0.6);
    CGContextSetStrokeColorWithColor(context, [[UIColor lightGrayColor] CGColor]);
    
    //How many lines?
    int howMany = (kDefaultGraphWidth - kOffsetX)/kStepX;
    
//    //here the lines go
    for (int i=0; i<=howMany; i++) {
        
        CGContextMoveToPoint(context, kOffsetX + i*kStepX, kGraphTop);
        CGContextAddLineToPoint(context, kOffsetX + i*kStepX, kGraphBottom);
    }
    
    
    int howManyHorizontal = (kGraphHeight - kOffsetY)/kStepY;
    
    for (int i=0; i<=howManyHorizontal; i++){
        CGContextMoveToPoint(context, 0, kOffsetY + i*kStepY);
        CGContextAddLineToPoint(context, kDefaultGraphWidth - kOffsetY, kOffsetY + i*kStepY);
    }
    
  
     CGContextStrokePath(context);
    
}



@end
