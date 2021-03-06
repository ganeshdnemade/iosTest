//
//  GraphView.m
//  MyGraph
//
//  Created by mac on 20/12/15.
//  Copyright (c) 2015 GDNApp. All rights reserved.
//

#import "GraphView.h"
@implementation GraphView

    float data[] = {0.7,0.4,0.9,1.0,0.2, 0.85, 0.11, 0.75, 0.53, 0.44, 0.88 , 0.77};



-(void)drawBar:(CGRect)rect context:(CGContextRef)ctx{
    
    CGFloat components[12] = {0.2314,0.5686, 0.4, 1.0,
        0.4727, 1.0,0.8, 1.0,
        0.23, 0.5,8.3,1.0};
    
    CGFloat locations[3] = {0.0, 0.33, 1.0};
    
    size_t num_locations = 3;
    
    
    CGColorSpaceRef colorspace = CGColorSpaceCreateDeviceRGB();
    CGGradientRef gradient = CGGradientCreateWithColorComponents(colorspace, components, locations, num_locations);
    CGPoint startPoint = rect.origin;
    CGPoint endPoint = CGPointMake(rect.origin.x + rect.size.width, rect.origin.y);
    
 

    
    CGContextBeginPath(ctx);
    CGContextSetGrayFillColor(ctx, 0.2,0.7);
    CGContextMoveToPoint(ctx, CGRectGetMinX(rect), CGRectGetMinY(rect));
    CGContextAddLineToPoint(ctx, CGRectGetMaxX(rect), CGRectGetMinY(rect));
    CGContextAddLineToPoint(ctx, CGRectGetMaxX(rect), CGRectGetMaxY(rect));
    CGContextAddLineToPoint(ctx, CGRectGetMinX(rect), CGRectGetMaxY(rect));
    CGContextClosePath(ctx);
 
    
    CGContextSaveGState(ctx);
    CGContextClip(ctx);
    
    CGContextDrawLinearGradient(ctx, gradient, startPoint, endPoint, 0);
    CGContextRestoreGState(ctx);
    
    //Release the resources
    CGColorSpaceRelease(colorspace);
    CGGradientRelease(gradient);
    
    
    
    
  }

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextSetLineWidth(context, 0.6);
    CGContextSetStrokeColorWithColor(context, [[UIColor lightGrayColor] CGColor]);
    
    //How many lines?
    int howMany = (kDefaultGraphWidth - kOffsetX)/kStepX;
    CGFloat dash[] = {2.0, 2.0};
    CGContextSetLineDash(context, 0.0, dash,2);
//    //here the lines go
    for (int i=0; i<=howMany; i++) {
        
        CGContextMoveToPoint(context, kOffsetX + i*kStepX, kGraphTop);
        CGContextAddLineToPoint(context, kOffsetX + i*kStepX, kGraphBottom);
    }
    CGContextStrokePath(context);
    CGContextSetLineDash(context, 0, NULL,0);
    int howManyHorizontal = (kGraphHeight - kOffsetY)/kStepY;
    
    for (int i=0; i<=howManyHorizontal; i++){
        CGContextMoveToPoint(context, 0, kOffsetY + i*kStepY);
        CGContextAddLineToPoint(context, kDefaultGraphWidth - kOffsetY, kOffsetY + i*kStepY);
    }
    
  
    
    
    CGContextStrokePath(context);
    
    
    
    float maxBarHeight = kGraphHeight - kBarTop - kOffsetY;
    
    for (int i =0;i<sizeof(data); i++) {
        float barX =  kOffsetX + kStepX + i*kStepX - kBarWidth/2;
        float barY = kBarTop + maxBarHeight - maxBarHeight * data[i];
        float barHeight = maxBarHeight * data[i];
        
        CGRect barRect = CGRectMake(barX, barY, kBarWidth, barHeight);
        [self drawBar:barRect context:context];
        
    }

    
//setting background to graph
//    UIImage *image = [UIImage imageNamed:@"mario.jpg"];
//    CGRect imageRect = CGRectMake(0,0, image.size.width, image.size.height);
//    CGContextDrawImage(context, imageRect, image.CGImage);
    
                     
    
}



@end
