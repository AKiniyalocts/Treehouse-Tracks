//
//  main.m
//  MyFirstObjectiveCProgram
//
//  Created by turner on 9/26/13.
//  Copyright (c) 2013 treehouse. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "Sphere.h"

int main()
{
    Sphere *ball = [[Sphere alloc] init];
    ball.radius = 34;
    
    NSLog(@"ball radius %f", [ball radius]);
    return 0;
}
