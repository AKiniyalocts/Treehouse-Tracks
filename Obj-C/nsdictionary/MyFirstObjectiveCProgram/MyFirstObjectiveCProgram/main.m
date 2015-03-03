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
    
    
    
    NSDictionary *book = @{ @"title":@"The Cat in the Hat", @"author":@"Dr Suess"};
    
    printLog(book);
    
    NSString *string = [book objectForKey:@"author"];
    
    printLog(string);
    
    NSMutableDictionary *mutableBook = [NSMutableDictionary dictionaryWithDictionary:book];
    [mutableBook setObject:@1957 forKey:@"year"];
    
    for (NSString *string in [mutableBook allKeys]){
        printLog(string);
    }
    
    printLog(mutableBook);
    return 0;
}
void printLog(NSObject *s){
    NSLog(@"string: %@\n", s);
}
