//
//  Entry.h
//  Journal(ObjC)
//
//  Created by Madison Kaori Shino on 7/1/19.
//  Copyright © 2019 Madi S. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Entry : NSObject

@property (nonatomic, copy) NSString* title;
@property (nonatomic, copy) NSString* body;
@property (nonatomic, copy) NSDate* timeStamp;

-(instancetype)initWithEntryTitle:(NSString *)title
                             body:(NSString *)body;

@end

NS_ASSUME_NONNULL_END
