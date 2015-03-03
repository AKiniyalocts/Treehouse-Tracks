//
//  main.m
//  MyFirstObjectiveCProgram
//
//  Created by turner on 9/26/13.
//  Copyright (c) 2013 treehouse. All rights reserved.
//

#import <Cocoa/Cocoa.h>

int main()
{
    NSString *alfa = @"alfa";
    NSString *delta = @"delta";
    NSLog(@"%@ %@", alfa, delta);
    
    NSString *concat = [[alfa stringByAppendingString:delta] stringByAppendingString:@"lotsmore"];
    NSLog(@"%@", concat);

    //case
    NSString *upper = [alfa uppercaseString];
    NSLog(@"%@", upper);

    return 0;
}
