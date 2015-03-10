//
//  BlogPost.h
//  New Blog Reader
//
//  Created by Anthony Kiniyalocts on 3/9/15.
//  Copyright (c) 2015 Anthony Kiniyalocts. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BlogPost : NSObject

@property (nonatomic, strong) NSString *title;

@property (nonatomic, strong) NSString *author;

@property (nonatomic, strong) NSString *thumbnail;

@property (nonatomic, strong) NSString *date;

@property (nonatomic, strong) NSURL *url;

- (id) initWithTitle:(NSString *) title;

+ (id) blogPostWithTitle :(NSString *)title;

- (NSURL *) thumbnailURL;

- (NSString *) formattedDate;

@end
