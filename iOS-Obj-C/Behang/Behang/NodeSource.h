//
//  NodeSource.h
//  Behang
//
//  Created by Anthony Kiniyalocts on 3/11/15.
//  Copyright (c) 2015 Anthony Kiniyalocts. All rights reserved.
//

#import "JSONModel.h"
#import "NodeCategory.h"

@protocol NodeSource
@end

@interface NodeSource : JSONModel

@property(nonatomic, strong) NSArray<NodeCategory, ConvertOnDemand> *category;

@end
