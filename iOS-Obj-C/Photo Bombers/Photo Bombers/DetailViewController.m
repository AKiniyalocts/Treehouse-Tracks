//
//  DetailViewController.m
//  Photo Bombers
//
//  Created by Anthony Kiniyalocts on 3/16/15.
//  Copyright (c) 2015 Treehouse. All rights reserved.
//

#import "DetailViewController.h"
#import "PhotoController.h"

@interface DetailViewController ()

@property(nonatomic) UIImageView *imageView;

@property(nonatomic) UIDynamicAnimator *animator;

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor =  [UIColor whiteColor];
    
    self.imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, -320.0, 320.0, 320.0)];
    [self.view addSubview:self.imageView];
    
    [PhotoController imageForPhoto:self.photo size:@"standard_resolution" completion:^(UIImage *image) {
        self.imageView.image = image;
    }];
    

    UISwipeGestureRecognizer *swipe = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(close)];
    swipe.direction = UISwipeGestureRecognizerDirectionDown;
    
    [self.view addGestureRecognizer:swipe];
    
    self.animator = [[UIDynamicAnimator alloc] initWithReferenceView:self.view];

}

- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    
    UISnapBehavior *snap = [[UISnapBehavior alloc] initWithItem:self.imageView snapToPoint:self.view.center];
    
    [self.animator addBehavior:snap];
}

- (void)close{
    [self.animator removeAllBehaviors];
    
    UISnapBehavior *snap = [[UISnapBehavior alloc] initWithItem:self.imageView snapToPoint:CGPointMake(CGRectGetMidX(self.view.bounds), CGRectGetMaxX(self.view.bounds))];
    
    [self.animator addBehavior:snap];
    
    [self dismissViewControllerAnimated:YES completion:nil];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
