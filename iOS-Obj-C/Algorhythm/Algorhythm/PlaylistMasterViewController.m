//
//  ViewController.m
//  Algorhythm
//
//  Created by Anthony Kiniyalocts on 3/5/15.
//  Copyright (c) 2015 Anthony Kiniyalocts. All rights reserved.
//

#import "PlaylistMasterViewController.h"
#import "PlaylistDetailViewController.h"

@interface PlaylistMasterViewController ()

@end

@implementation PlaylistMasterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.aButton setTitle:@"Press Me!" forState:UIControlStateNormal];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    //set in the storyboard on the segue
    //can i access this programmatically, instead of with a string name??
    if ([segue.identifier isEqualToString:@"showPlaylistDetail"]) {
        PlaylistDetailViewController *playlistDetailController = (PlaylistDetailViewController *)segue.destinationViewController;
        playlistDetailController.segueLabelText = @"Yay! You pressed the button!";
    }
}


@end
