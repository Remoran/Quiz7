//
//  Quiz7DetailViewController.h
//  Quiz7
//
//  Created by Ryan on 4/7/14.
//  Copyright (c) 2014 Ryan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Task.h"

@interface Quiz7DetailViewController : UIViewController <UITextFieldDelegate>

@property (strong, nonatomic) Task *detailItem;
@property (weak, nonatomic) IBOutlet UIDatePicker *datePicker;
@property (weak, nonatomic) IBOutlet UITextField *nameField;
@property (weak, nonatomic) IBOutlet UISlider *urgencySlider;
@property (nonatomic, copy) void (^dismissBlock)(void);

- (IBAction)save:(id)sender;

@end
