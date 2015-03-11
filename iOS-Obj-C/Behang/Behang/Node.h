//
//  Node.h
//  Behang
//
//  Created by Anthony Kiniyalocts on 3/11/15.
//  Copyright (c) 2015 Anthony Kiniyalocts. All rights reserved.
//

#import "JSONModel.h"
#import "NodeSource.h"

@interface Node : JSONModel

@property(nonatomic, strong) NodeSource *wallpapers;

@end
