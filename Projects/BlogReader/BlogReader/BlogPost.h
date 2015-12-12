//
//  BlogPost.h
//  BlogReader
//
//  Created by mac on 12/12/15.
//  Copyright (c) 2015 GDNApp. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BlogPost : NSObject
@property (nonatomic, strong) NSString *title;
@property(nonatomic, strong) NSString *author;
@property (nonatomic, strong) NSString *thumbnail;
@property (nonatomic,strong)NSString *date;


-(id) initWithTitle:(NSString *)title;

+(id) blogPostWithTitle:(NSString * ) title;



-(NSURL *) thumbnailURL;

@end