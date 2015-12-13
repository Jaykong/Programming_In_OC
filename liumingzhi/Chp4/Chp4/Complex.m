//
//  Complex.m
//  Chp4
//
//  Created by lmz on 15/12/6.
//  Copyright © 2015年 lmz. All rights reserved.
//

#import "Complex.h"

@implementation Complex
{
    double real,imaginary;
}


-(void) setReal:(double)a andImaginary:(double)b
{
    real = a;
    imaginary = b;
}

-(void) print
{
    NSLog(@"复数值为%lf+%lfi",real,imaginary);
}
-(double) real
{
    return real;
}
-(double) imaginary
{
    return imaginary;
}

@end
