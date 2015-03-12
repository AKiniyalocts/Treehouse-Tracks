//
//  MasterViewController.m
//  Behang
//
//  Created by Anthony Kiniyalocts on 3/9/15.
//  Copyright (c) 2015 Anthony Kiniyalocts. All rights reserved.
//

#import "MasterViewController.h"
#import "DetailViewController.h"
#import "Node.h"
#import "NodeCategory.h"

@interface MasterViewController ()
@property Node *node;
@property NodeSource *nodeSource;
@property NodeCategory *nodeCategory;

@end

@implementation MasterViewController

- (void)awakeFromNib {
    [super awakeFromNib];
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPad) {
        self.clearsSelectionOnViewWillAppear = NO;
        self.preferredContentSize = CGSizeMake(320.0, 600.0);
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self refresh];
    [self setNeedsStatusBarAppearanceUpdate];
    
    

}
-(UIStatusBarStyle)preferredStatusBarStyle{
    return UIStatusBarStyleLightContent;
}

- (void)refresh {
    NSURLSession *session = [NSURLSession sharedSession];
    NSString *urlString = @"http://knokfirst.com/behang_manifest.json";
    
    NSURL *url = [[NSURL alloc] initWithString:urlString];
    NSURLRequest *request = [[NSURLRequest alloc] initWithURL:url];
    NSURLSessionDownloadTask *task = [session downloadTaskWithRequest:request completionHandler:^(NSURL *location, NSURLResponse *response, NSError *error) {
        
        NSData *data = [[NSData alloc] initWithContentsOfURL:location];
        NSString *json = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];

        
        NSError *err = nil;
        self.node = [[Node alloc] initWithString:json error:&err];
        
        NSLog(@"%lu", (unsigned long)self.node.wallpapers.category.count);
        
        
        dispatch_async(dispatch_get_main_queue(), ^{
            [self.tableView reloadData];
        });
    }];
    [task resume];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Segues

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
    NSInteger index = indexPath.row;

    self.nodeCategory = self.node.wallpapers.category[index];

    
    if([segue.identifier isEqualToString:@"showDetail"]){
        //[segue.destinationViewController setNodeCategory:self.nodeCategory];
        UINavigationController *navigationController = (UINavigationController *)segue.destinationViewController;
        DetailViewController *detailViewController = (DetailViewController *) navigationController.topViewController;
        
        detailViewController.nodeCategory = self.nodeCategory;
        
        NSLog(@"%@", self.nodeCategory.name);
        //detailView.nodeCategory = self.nodeCategory;
        
    }
}

#pragma mark - Table View


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.node.wallpapers.category count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
    //NSLog(@"%@", [self.categories valueForKeyPath:@"name"]);
    NSInteger index = indexPath.row;
    self.nodeCategory = self.node.wallpapers.category[index];

    NSString *catName = [self.nodeCategory name];
    NSInteger count = [self.nodeCategory.wallpaper count];
    
    NSString *formatted = [[NSString alloc] initWithFormat:@"%@ - %lu", catName, count];
    cell.textLabel.text = formatted;
    
    
   
    return cell;
}




@end
