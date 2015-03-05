//
//  main.m
//  MyFirstObjectiveCProgram
//
//  Created by turner on 9/26/13.
//  Copyright (c) 2013 treehouse. All rights reserved.
//

#import <Cocoa/Cocoa.h>
void printLog(NSObject *s);

int main()
{
    NSArray *letters = @[@"alfa", @"bravo", @"charlie"];
    printLog(letters);
    
    NSMutableArray *cap = [NSMutableArray array];
    for(NSString *string in letters){
        [cap addObject:[string capitalizedString]];
    }
    
    printLog(cap);
    return 0;
}

void printLog(NSObject *s){
    NSLog(@" %@\n", s);
}
