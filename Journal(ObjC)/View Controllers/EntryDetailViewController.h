//
//  EntryDetailViewController.h
//  Journal(ObjC)
//
//  Created by Madison Kaori Shino on 7/1/19.
//  Copyright © 2019 Madi S. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Entry.h"

NS_ASSUME_NONNULL_BEGIN

@interface EntryDetailViewController : UIViewController

//LANDING PAD
@property (nonatomic, strong) Entry *entry;

@end

NS_ASSUME_NONNULL_END
