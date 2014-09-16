//
//  File.m
//  Binary
//
//  Created by Darshan Shankar on 9/5/14.
//  Copyright (c) 2014 Darshan Shankar. All rights reserved.
//

#import "File.h"

@implementation File
@synthesize filename;
@synthesize extension;
@synthesize language;

static File *instance = nil;

+ (File *)getInstance:(id)fake andAwesome:(int)awesome withFoo:(int)bar
{
    @synchronized(self){
        if(instance == nil){
            instance = [File new];
            instance.filename = @"/sample";
            instance.extension = @"css";
            instance.language = @"css";
            instance.theme = @"okaida";
            instance.tabIndent = YES;
            instance.tabSpaces = 4;

            NSString *awesome = @"awesome";
            
        }
    }
    return instance;
}

@end