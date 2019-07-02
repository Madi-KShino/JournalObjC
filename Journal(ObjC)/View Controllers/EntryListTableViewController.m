//
//  EntryListTableViewController.m
//  Journal(ObjC)
//
//  Created by Madison Kaori Shino on 7/1/19.
//  Copyright © 2019 Madi S. All rights reserved.
//

#import "EntryListTableViewController.h"
#import "EntryDetailViewController.h"
#import "EntryController.h"
#import "Entry.h"

@interface EntryListTableViewController ()

@end

@implementation EntryListTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

//TABLE VIEW
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return EntryController.sharedInstance.entries.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"entryCell" forIndexPath:indexPath];
    
    Entry *entryToShow = EntryController.sharedInstance.entries[indexPath.row];
    cell.textLabel.text = entryToShow.title;
    
    return cell;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
        
        Entry *entryToRemove = EntryController.sharedInstance.entries[indexPath.row];
        [EntryController.sharedInstance removeEntry:entryToRemove];
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }
}

//NAVIGATION
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqual:@"toEntryDetailView"]) {
        NSIndexPath *index  = self.tableView.indexPathForSelectedRow;
        EntryDetailViewController *destinationVC = [segue destinationViewController];
        Entry *entry = EntryController.sharedInstance.entries[index.row];
        destinationVC.entry = entry;
    }
}

@end
