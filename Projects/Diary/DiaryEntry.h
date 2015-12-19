//
//  DiaryEntry.h
//  Diary
//
//  Created by mac on 13/12/15.
//  Copyright (c) 2015 GDNApp. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>
NS_ENUM(int16_t, DiaryEntryMood){
    DiaryEntryMoodGood = 0,
    DiaryEntryMoodAverage = 1,
    DiaryEntryMoodBad = 2
};

@interface DiaryEntry : NSManagedObject

@property (nonatomic, retain) NSString * body;
@property (nonatomic) NSTimeInterval date;
@property (nonatomic, retain) NSData * imageData;
@property (nonatomic, retain) NSString * location;
@property (nonatomic) int16_t mood;

@end
