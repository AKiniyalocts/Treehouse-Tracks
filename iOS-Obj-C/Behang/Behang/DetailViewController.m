//
//  DetailViewController.m
//  Behang
//
//  Created by Anthony Kiniyalocts on 3/9/15.
//  Copyright (c) 2015 Anthony Kiniyalocts. All rights reserved.
//

#import "DetailViewController.h"
#import "PhotoCell.h"

@interface DetailViewController ()
@end

@implementation DetailViewController

-(instancetype)init{
    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
    layout.itemSize = CGSizeMake(106.0, 106.0);
    layout.minimumInteritemSpacing = 1.0;
    layout.minimumLineSpacing = 1.0;
    NSLog(@"initialized grid");
    return (self = [super initWithCollectionViewLayout:layout]);
    
}

-(void)loadView{    
    [self.collectionGrid registerClass:[PhotoCell class] forCellWithReuseIdentifier:@"photo"];
    self.collectionGrid.backgroundColor = [UIColor whiteColor];
    
    dispatch_async(dispatch_get_main_queue(), ^{
        [self.collectionGrid reloadData];
    });
    
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return [self.nodeCategory.wallpaper count];
}


- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    PhotoCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"photo" forIndexPath:indexPath];
    NSInteger index = indexPath.row;
    
    cell.photo = self.nodeCategory.wallpaper[index];

    //cell.photo = self.walls[indexPath.row];
    
    return cell;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
