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
    NSArray *foo = @[@"f", @"o", @"o"];
    
    NSLog(@"foo %@", foo);
    
    for(NSString *string in foo){
        printLog(string);
    }
    NSString *thang = foo[2];
    printLog(thang);
    

    NSMutableArray *lots = [[NSMutableArray alloc] init];
    
    lots [0] = @"bravo";
    lots [1] = @"rex";

    lots [2] = @"sam";
    lots [3] = @"bravo";
    lots [4] = @"bravo";
    
    [lots removeObjectAtIndex:2];

    printLog(lots);
    
    return 0;
}
void printLog(NSObject *s){
    NSLog(@"string: %@\n", s);
}
