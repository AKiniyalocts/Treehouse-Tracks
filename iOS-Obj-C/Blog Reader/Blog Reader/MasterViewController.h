//
//  MasterViewController.h
//  Blog Reader
//
//  Created by Anthony Kiniyalocts on 3/6/15.
//  Copyright (c) 2015 Anthony Kiniyalocts. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DetailViewController;

@interface MasterViewController : UITableViewController

@property (strong, nonatomic) DetailViewController *detailViewController;

@property(strong, nonatomic) NSArray *titlesArray;

@end

