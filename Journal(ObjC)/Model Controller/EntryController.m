//
//  EntryController.m
//  Journal(ObjC)
//
//  Created by Madison Kaori Shino on 7/1/19.
//  Copyright © 2019 Madi S. All rights reserved.
//

#import "EntryController.h"
#import "Entry.h"

@implementation EntryController

//SHARED INSTANCE INIT
+ (instancetype)sharedInstance {
    static EntryController *shared = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^ {
        shared = [EntryController new];
    });
    return shared;
}

//CREATE ENTRIES
- (void)createEntry:(Entry *)entry {
    
    [_entries addObject:entry];
}

//REMOVE ENTRIES
- (void)removeEntry:(Entry *)entry {
    
    [_entries removeObject:entry];
}

@end

