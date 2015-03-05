//
//  FactBook.h
//  FunFacts
//
//  Created by Anthony Kiniyalocts on 3/5/15.
//  Copyright (c) 2015 Anthony Kiniyalocts. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FactBook : NSObject

@property(strong, nonatomic)NSArray *facts;
- (NSString *)randomFact;

@end
