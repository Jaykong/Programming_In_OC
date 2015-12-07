//
//  Complex.m
//  chp7 class
//
//  Created by Wenslow on 15/11/26.
//  Copyright © 2015年 Wenslow. All rights reserved.
//

#pragma mark - exercise 6#

#import "Complex.h"

@implementation Complex
{
    double real, imaginary;
}

- (void)setReal: (double)a
{
    real = a;
}

- (void)setImaginary: (double)b
{
    imaginary = b;
}

- (double)real
{
    return real;
}

- (double)imaginary
{
    return imaginary;
}

- (void)print
{
    NSLog(@"The result is %d + %di", (int) real, (int) imaginary);
}

- (Complex *) add: (Complex *)complexNum
{
    Complex *tempComplex = [[Complex alloc]init];
    tempComplex.real = self.real + complexNum.real;
    tempComplex.imaginary = self.imaginary + complexNum.imaginary;
    return tempComplex;
}
@end
