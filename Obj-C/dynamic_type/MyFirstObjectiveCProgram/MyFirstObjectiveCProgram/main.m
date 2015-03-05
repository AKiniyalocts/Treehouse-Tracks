//
//  main.m
//  MyFirstObjectiveCProgram
//
//  Created by turner on 9/26/13.
//  Copyright (c) 2013 treehouse. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "Shape.h"

void printLog(NSObject *s);

int main()
{
    Shape *shape = [[Shape alloc]init];
    
    NSArray *mixed = @[ @23, @"tango", shape ];
    
    for(id thing in mixed){
        printLog([thing description]);
        
    }
    return 0;
}

void printLog(NSObject *s){
    NSLog(@" %@\n", s);
}
