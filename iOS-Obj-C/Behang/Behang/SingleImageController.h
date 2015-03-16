//
//  SIngleImageControllerViewController.h
//  Behang
//
//  Created by Anthony Kiniyalocts on 3/13/15.
//  Copyright (c) 2015 Anthony Kiniyalocts. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SingleImageController : UIViewController <UIScrollViewDelegate>

@property (strong, nonatomic) IBOutlet UIScrollView *imageScrollView;

@property (strong, nonatomic) IBOutlet UIImageView *singleImageView;
@property (strong, nonatomic) NSURL *imageURL;

@end
