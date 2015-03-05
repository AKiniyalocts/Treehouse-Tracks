//
//  ColorWheel.h
//  FunFacts
//
//  Created by Anthony Kiniyalocts on 3/5/15.
//  Copyright (c) 2015 Anthony Kiniyalocts. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface ColorWheel : NSObject

@property(strong, nonatomic) NSArray *colors;
-(UIColor *) randomColor;

@end
