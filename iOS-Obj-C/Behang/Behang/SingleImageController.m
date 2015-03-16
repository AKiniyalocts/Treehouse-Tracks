//
//  SIngleImageControllerViewController.m
//  Behang
//
//  Created by Anthony Kiniyalocts on 3/13/15.
//  Copyright (c) 2015 Anthony Kiniyalocts. All rights reserved.
//

#import "SingleImageController.h"
#import "UIImageView+AFNetworking.h"

@interface SingleImageController ()

@end

@implementation SingleImageController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSLog(@"%@", self.imageURL);
    
    [self.imageScrollView setDelegate:self];
    
    UIBarButtonItem *signOutButton = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"download"] style:UIBarButtonItemStylePlain target:self action:@selector(saveWall:)];
    
    signOutButton.tintColor = [UIColor whiteColor];
    self.navigationItem.rightBarButtonItem = signOutButton;
    
    [self.singleImageView setImageWithURL: self.imageURL];

    
    
    // Do any additional setup after loading the view.
}

-(IBAction)saveWall:(id)sender {
    UIImageWriteToSavedPhotosAlbum(self.singleImageView.image, nil, nil, nil);

    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView{
    return self.singleImageView;
}

@end
