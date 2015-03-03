//
//  Sphere.h
//  MyFirstObjectiveCProgram
//
//  Created by Anthony Kiniyalocts on 3/3/15.
//  Copyright (c) 2015 treehouse. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Sphere : NSObject{
    NSArray *_center;
    float _radius;
}

@property(nonatomic)float radius;
@property (nonatomic, strong)NSArray *center;

-(void)setCenter:(NSArray *)center radius:(float)radius;
@end
