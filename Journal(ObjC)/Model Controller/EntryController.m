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

- (instancetype)init
{
    self = [super init];
    if (self) {
        _entries = [NSMutableArray new];
    }
    return self;
}

//CREATE ENTRIES
- (void)createEntry:(NSString *)title body:(NSString *)body {
    Entry *newEntry = [[Entry alloc] initWithEntryTitle:title body:body];
    [_entries addObject:newEntry];
}

- (void)removeEntry:(Entry *)entry {
    [_entries removeObject:entry];
}

- (void)updateWith:(Entry *)entry title:(NSString *)title body:(NSString *)body {
    entry.title = title;
    entry.body = body;
}

@end

