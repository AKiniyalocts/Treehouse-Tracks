//
//  DetailViewController.h
//  Behang
//
//  Created by Anthony Kiniyalocts on 3/9/15.
//  Copyright (c) 2015 Anthony Kiniyalocts. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UICollectionViewController

@property (strong, nonatomic) IBOutlet UICollectionView *collectionGrid;
@property (strong, nonatomic) NSDictionary *walls;

@end

