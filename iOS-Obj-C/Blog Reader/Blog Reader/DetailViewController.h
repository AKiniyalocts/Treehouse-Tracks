//
//  DetailViewController.h
//  Blog Reader
//
//  Created by Anthony Kiniyalocts on 3/6/15.
//  Copyright (c) 2015 Anthony Kiniyalocts. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;
@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

@end

