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

@interface DetailViewController ()
@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = self.nodeCategory.name;
    
    [self.collectionView registerClass:[PhotoCell class] forCellWithReuseIdentifier:@"photo"];
    
   
}
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    NSIndexPath *indexPath = [self.collectionView indexPathForCell:sender];
    
    NSInteger index = indexPath.row;
    
    NSLog(@"%@", self.nodeCategory.wallpaper[index]);
    
    
}



-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return [self.nodeCategory.wallpaper count];
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

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end