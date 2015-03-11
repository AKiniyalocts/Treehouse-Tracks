//
//  MasterViewController.m
//  Behang
//
//  Created by Anthony Kiniyalocts on 3/9/15.
//  Copyright (c) 2015 Anthony Kiniyalocts. All rights reserved.
//

#import "MasterViewController.h"
#import "DetailViewController.h"

@interface MasterViewController ()

@property NSMutableArray *objects;
@property NSArray *categories;
@property NSArray *walls;
@property NSArray *names;
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
    
    

}

- (void)refresh {
    NSURLSession *session = [NSURLSession sharedSession];
    NSString *urlString = @"http://knokfirst.com/behang_manifest.json";
    
    NSURL *url = [[NSURL alloc] initWithString:urlString];
    NSURLRequest *request = [[NSURLRequest alloc] initWithURL:url];
    NSURLSessionDownloadTask *task = [session downloadTaskWithRequest:request completionHandler:^(NSURL *location, NSURLResponse *response, NSError *error) {
        
        NSData *data = [[NSData alloc] initWithContentsOfURL:location];
        NSDictionary *responseDictionary = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:nil];
        
        self.categories = [responseDictionary valueForKeyPath:@"wallpapers.category"];
        
        self.names = [responseDictionary valueForKeyPath:@"wallpapers.category.name"];
        
        self.walls = [responseDictionary valueForKeyPath:@"wallpapers.category"];
        
        NSLog(@"%@", self.names);
        
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
    
    //self.walls = [self.categories[indexPath.row];
    
    NSLog(@"%@", self.walls);
    
    if([segue.identifier isEqualToString:@"showDetail"]){
        DetailViewController *detailView = (DetailViewController *) segue.destinationViewController;
        detailView.walls = [[NSArray alloc] initWithArray:self.walls];
        
    }
}

#pragma mark - Table View


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.categories count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
    //NSLog(@"%@", [self.categories valueForKeyPath:@"name"]);
    NSString *catName = [[NSString alloc] initWithString:[self.names objectAtIndex:indexPath.row]];
    
    cell.textLabel.text = catName;
    
    
   
    return cell;
}




@end
