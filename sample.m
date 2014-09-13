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

+ (File *)getInstance:(id)fake
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
            
        }
    }
    return instance;
}

@end