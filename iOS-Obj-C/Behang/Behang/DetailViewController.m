//
//  DetailViewController.m
//  Behang
//
//  Created by Anthony Kiniyalocts on 3/9/15.
//  Copyright (c) 2015 Anthony Kiniyalocts. All rights reserved.
//

#import "DetailViewController.h"
#import "SAMCache.h"
#import "PhotoCell.h"
#import "UIImageView+AFNetworking.h"
#import "SingleImageController.h"

long selected;

@interface DetailViewController ()

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = self.nodeCategory.name;
    
    [self.collectionView registerClass:[PhotoCell class] forCellWithReuseIdentifier:@"photo"];
    
   
}
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    if([segue.identifier isEqualToString:@"showSingle"]){
        
        NodeWallpaper *wall = self.nodeCategory.wallpaper[selected];
        
        NSURL *url = [[NSURL alloc] initWithString:wall.url];
        
        SingleImageController *singleImageController = (SingleImageController *) segue.destinationViewController;
        singleImageController.imageURL = url;
    
    }
}



-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return [self.nodeCategory.wallpaper count];
}
-  (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    NSLog(@"%ld", (long)indexPath.item);
    selected = (long)indexPath.item;

    
    NodeWallpaper *wall = self.nodeCategory.wallpaper[selected];
    
    NSURL *url = [[NSURL alloc] initWithString:wall.url];
    
    SingleImageController *singleImageController = [[SingleImageController alloc] init];
    
    singleImageController.imageURL = url;
    
    [self presentViewController:singleImageController animated:YES completion:nil];
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    NSString *identifier = @"photo";
    PhotoCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:identifier forIndexPath:indexPath];
    NodeWallpaper *wall = self.nodeCategory.wallpaper[indexPath.row];
    
    NSURL *url = [[NSURL alloc] initWithString:wall.thumbUrl];
    
    NSLog(@"%@", url);
    
    [cell.imageView setImageWithURL:url];
    
    
    return cell;
}

@end