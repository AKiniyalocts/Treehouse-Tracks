//
//  NodeWallpaper.h
//  Behang
//
//  Created by Anthony on 3/10/15.
//  Copyright (c) 2015 Anthony Kiniyalocts. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "JSONModel.h"

@protocol NodeWallpaper
@end

@interface NodeWallpaper : JSONModel

@property(strong, nonatomic) NSString *name;
@property(strong, nonatomic) NSString *author;
@property(strong, nonatomic) NSString *url;
@property(strong, nonatomic) NSString *thumbUrl;

@end
