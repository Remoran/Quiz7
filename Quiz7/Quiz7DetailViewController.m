//
//  Quiz7DetailViewController.m
//  Quiz7
//
//  Created by Ryan on 4/7/14.
//  Copyright (c) 2014 Ryan. All rights reserved.
//

#import "Quiz7DetailViewController.h"

@interface Quiz7DetailViewController ()
- (void)configureView;
@end

@implementation Quiz7DetailViewController
@synthesize dismissBlock;

#pragma mark - Managing the detail item

- (void)setDetailItem:(id)newDetailItem
{
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
        
        // Update the view.
        [self configureView];
    }
}

- (void)configureView
{
    // Update the user interface for the detail item.

    if (self.detailItem) {
        [self.urgencySlider setValue:[self.detailItem urgency]];
        [self.nameField setText:[self.detailItem name]];
        [self.datePicker setDate:[self.detailItem dueDate]];
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self configureView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return YES;
}

- (IBAction)save:(id)sender {
    [self.detailItem setUrgency:[self.urgencySlider value]];
    [self.detailItem setName:[self.nameField text]];
    [self.detailItem setDueDate:[self.datePicker date]];
    [self.presentingViewController dismissViewControllerAnimated:NO completion:dismissBlock];
}

@end
