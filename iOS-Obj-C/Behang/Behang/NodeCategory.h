//
//  NodeCategory.h
//  Behang
//
//  Created by Anthony on 3/10/15.
//  Copyright (c) 2015 Anthony Kiniyalocts. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "NodeWallpaper.h"

@protocol NodeCategory

@end

@interface NodeCategory : JSONModel

@property(nonatomic, strong) NSArray<NodeWallpaper, ConvertOnDemand> *wallpaper;
@property(nonatomic, strong) NSString *name;

@end
