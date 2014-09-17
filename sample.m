//
//  Objective C Test File
//
//  Sample.m
//  Binary
//
//  Created by Darshan Shankar on 9/5/14.
//  Copyright (c) 2014 Darshan Shankar. All rights reserved.
//

#import "Sample.h"

@implementation Sample
@synthesize filename;
@synthesize extension;
@synthesize language;

static Sample *instance = nil;

+ (Sample *)getInstance:(id)fake andAwesome:(int)awesome withFoo:(int)bar
{
    @synchronized(self){
        if(instance == nil){
            instance = [Sample new];
            instance.filename = @"/sample";
            instance.extension = @"css";
            instance.language = @"css";
            instance.theme = @"okaida";
            instance.tabIndent = YES;
            instance.tabSpaces = 4;

            [self getInstance:4];
            [self getInstance:4 andAwesome:4 withFoo:4];

            NSString *awesome = @"awesome";
            
        }
    }
    return instance;
}

@end