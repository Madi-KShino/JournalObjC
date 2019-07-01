//
//  Entry.m
//  Journal(ObjC)
//
//  Created by Madison Kaori Shino on 7/1/19.
//  Copyright © 2019 Madi S. All rights reserved.
//

#import "Entry.h"

@implementation Entry

- (instancetype)initWithEntryTitle:(NSString *)title body:(NSString *)body {
    
    self = [super init];
    if (self) {
        _title = title;
        _body = body;
        _timeStamp = [NSDate new];
    }
    return self;
}

@end
