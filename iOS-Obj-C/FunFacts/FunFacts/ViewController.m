//
//  ViewController.m
//  FunFacts
//
//  Created by Anthony Kiniyalocts on 3/5/15.
//  Copyright (c) 2015 Anthony Kiniyalocts. All rights reserved.
//

#import "ViewController.h"
#import "FactBook.h"
#import "ColorWheel.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.factBook = [[FactBook alloc]init];
    self.colorWheel = [[ColorWheel alloc]init];
    
    self.view.backgroundColor = [self.colorWheel randomColor];
    self.funFactLabel.text = [self.factBook randomFact];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)showFunFact {
    
    self.funFactLabel.text = [self.factBook randomFact];
    UIColor *randomColor = [self.colorWheel randomColor];
    
    self.view.backgroundColor = randomColor;
    self.funFactbutton.tintColor = randomColor;

}

@end
