//
//  THPhotoCell.h
//  Photo Bombers
//
//  Created by Sam Soffes on 1/28/14.
//  Copyright (c) 2014 Treehouse. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NodeWallpaper.h"

@interface PhotoCell : UICollectionViewCell

@property (nonatomic) UIImageView *imageView;
@property (nonatomic) NodeWallpaper *photo;

@end
