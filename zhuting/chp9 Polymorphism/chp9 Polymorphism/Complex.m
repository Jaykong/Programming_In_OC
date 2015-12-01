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

@synthesize real, imaginary;

- (void)print
{
    NSLog(@"%g + %gi", real, imaginary);
}

- (id) add111: (id)complexNum
{
    id dateValue = [[Complex alloc]init];
    [dateValue setReal:self.real + [complexNum real]];
    [dateValue setImaginary:self.imaginary + [complexNum imaginary]];
    return dateValue;
}

- (void)setReal:(double)a andImaginary:(double)b
{
    real = a;
    imaginary = b;
}

@end
