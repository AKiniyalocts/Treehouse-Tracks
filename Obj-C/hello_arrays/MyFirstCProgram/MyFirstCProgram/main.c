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
    float numbers_geeks_love[] = {3.1415,1.6180, 1.4142} ;

    
    printf("PI %f\n", numbers_geeks_love[0]);
    
    printf("golden ratio %f\n", numbers_geeks_love[1]);
    
    printf("Square root of %f\n", numbers_geeks_love[2]);
    
    int primes[] = {2,3,5,7};
    printf("the first 4 prime numbers: %d %d %d %d\n ", primes[0], primes[1], primes[2], primes[3]);
    return 0;
}

