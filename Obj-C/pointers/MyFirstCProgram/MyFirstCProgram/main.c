//
//  main.c
//  MyFirstCProgram
//
//  Created by turner on 9/26/13.
//  Copyright (c) 2013 treehouse. All rights reserved.
//

#include <stdio.h>


int main()
{
    
    //size of an array
    float numbers[] = {11.11, 22.22, 33.33};
//    printf("float %ld bytes\n", sizeof(float));
//    printf("numbers %ld bytes\n", sizeof(numbers));
//    
//    printf("array  length %ld \n", sizeof(numbers)/sizeof(float));
    
    
    //pointers
    char *letter;
    char c = 'k';
    
    letter = &c;
    
    printf("%c is always the same as %c\n", c, *letter);
    
    c = 'q';
    printf("%c is always the same as %c\n", c, *letter);
    
    c = 'x';
    printf("%c is always the same as %c\n", c, *letter);
    
    char eldrige[] = "eldridge";
    letter = &eldrige[3];
    
    printf("%c is in %s\n", *letter, eldrige);

    ++letter;
    printf("%c is in %s\n", *letter, eldrige);


    
    return 0;
}

