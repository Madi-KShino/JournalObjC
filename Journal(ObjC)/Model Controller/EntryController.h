//
//  EntryController.h
//  Journal(ObjC)
//
//  Created by Madison Kaori Shino on 7/1/19.
//  Copyright © 2019 Madi S. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Entry.h"

NS_ASSUME_NONNULL_BEGIN

@interface EntryController : NSObject

//SHARED INSTANCE
+(instancetype)sharedInstance;

//ARRAY OF ENTRIES PROPERTY
@property (nonatomic, strong) NSMutableArray* entries;

//CRUD
-(void)removeEntry:(Entry *)entry;
-(void)createEntry:(NSString *)title body:(NSString *)body;
-(void)updateWith:(Entry *)entry title:(NSString *)title body:(NSString *)body;

@end

NS_ASSUME_NONNULL_END
