//
//  Quiz7DetailViewController.h
//  Quiz7
//
//  Created by Ryan on 4/7/14.
//  Copyright (c) 2014 Ryan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Quiz7DetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@end
