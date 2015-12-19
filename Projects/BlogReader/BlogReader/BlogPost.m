//
//  BlogPost.m
//  BlogReader
//
//  Created by mac on 12/12/15.
//  Copyright (c) 2015 GDNApp. All rights reserved.
//

#import "BlogPost.h"

@implementation BlogPost

- (id)initWithTitle:(NSString *)title
{
    self = [super init];
    if (self) {
        _title = title;
        _author = nil;
        _thumbnail = nil;
    }
    return self;
}

+(id)blogPostWithTitle:(NSString *)title
{
    return [[self alloc] initWithTitle:title];
}

-(NSURL *)thumbnailURL
{ 
        return [NSURL URLWithString:self.thumbnail];
    
}

-(NSString *) formattedDate
{
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc]init];
    [dateFormatter setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    NSDate *tempDate = [dateFormatter dateFromString:self.date];
    
    
    [dateFormatter setDateFormat:@"EE MMM, dd"];
    return [dateFormatter stringFromDate:tempDate];
}
@end
