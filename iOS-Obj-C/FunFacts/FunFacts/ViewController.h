//
//  ViewController.h
//  FunFacts
//
//  Created by Anthony Kiniyalocts on 3/5/15.
//  Copyright (c) 2015 Anthony Kiniyalocts. All rights reserved.
//

#import <UIKit/UIKit.h>


@class FactBook;
@class ColorWheel;

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *funFactLabel;
@property (weak, nonatomic) IBOutlet UIButton *funFactbutton;
@property (strong, nonatomic)FactBook *factBook;
@property (strong, nonatomic)ColorWheel *colorWheel;

@end

