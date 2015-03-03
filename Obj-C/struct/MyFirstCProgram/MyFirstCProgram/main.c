//
//  main.c
//  MyFirstCProgram
//
//  Created by turner on 9/26/13.
//  Copyright (c) 2013 treehouse. All rights reserved.
//

#include <stdio.h>

typedef struct{
    
    float center[3];
    float radius;
} Sphere;

Sphere makeSphere(float *c, float r);


int main()
{
    Sphere ball;
    float c[] = {11.11, 12.12, 13.13};
    float r = 12.44;
    
    ball = makeSphere(c, r);
    
    printf("center %f %f %f radius %f \n", ball.center[0], ball.center[1], ball.center[3], ball.radius);
    
    return 0;
}

Sphere makeSphere(float *c, float r){
    Sphere ball;
    ball.center[0] = c[0];
    ball.center[1] = c[1];
    ball.center[2] = c[2];
    
    ball.radius  = r;
    
    return ball;
}

