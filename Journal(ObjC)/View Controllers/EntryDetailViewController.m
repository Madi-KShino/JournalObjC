//
//  EntryDetailViewController.m
//  Journal(ObjC)
//
//  Created by Madison Kaori Shino on 7/1/19.
//  Copyright © 2019 Madi S. All rights reserved.
//

#import "EntryDetailViewController.h"
#import "EntryController.h"
#import "Entry.h"

@interface EntryDetailViewController () <UITextFieldDelegate>

//OUTLETS
@property (weak, nonatomic) IBOutlet UITextField *titleTextField;
@property (weak, nonatomic) IBOutlet UITextView *bodyTextField;

@end

@implementation EntryDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self updateWith:_entry];
}

//ACTIONS
- (IBAction)clearButtonTapped:(id)sender {
    _titleTextField.text = @"";
    _bodyTextField.text = @"";
}

- (IBAction)saveButtonTapped:(id)sender {
    NSString *title = _titleTextField.text;
    NSString *body = _bodyTextField.text;
    if (_entry != nil) {
        [EntryController.sharedInstance updateWith:_entry title:title body:body];
    } else {
        [EntryController.sharedInstance createEntry:title body:body];
    }
    [self.navigationController popViewControllerAnimated:true];
}

- (void)updateWith:(Entry *)entry {
    if ((entry = entry)) {
        _titleTextField.text = entry.title;
        _bodyTextField.text = entry.body;
    }
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return true;
}

@end
