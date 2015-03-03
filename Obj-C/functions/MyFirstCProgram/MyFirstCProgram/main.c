//
//  main.c
//  MyFirstCProgram
//
//  Created by turner on 9/26/13.
//  Copyright (c) 2013 treehouse. All rights reserved.
//

#include <stdio.h>


int funky_math(int a, int b);
int main()
{
    int foo = 24;
    int bar = 35;
    
    int result = funky_math(foo, bar);
    
    printf("fucky math %d\n", funky_math(foo, bar));
    return 0;
}

int funky_math(int a, int b){
    return a + b + 343;
}