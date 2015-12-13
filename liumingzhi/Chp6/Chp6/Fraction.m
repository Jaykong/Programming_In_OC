//
//  Fraction.m
//  Chp6
//
//  Created by lmz on 15/12/6.
//  Copyright © 2015年 lmz. All rights reserved.
//

#import "Fraction.h"

@implementation Fraction
{
    int numerator, denominator;
}

- (void)print
{
    NSLog(@"%d / %d", numerator, denominator);
}
- (void)setNumerator: (int)n
{
    numerator = n;
}
- (void)setDenominator: (int)n
{
    denominator = n;
}
- (int)numerator
{
    return numerator;
}
- (int)denominator
{
    return denominator;
}
- (double)convertToNum
{
    if (denominator != 0)
    {
        if (numerator == 0)
        {
            return 0;
        }
        if (denominator == 1)
        {
            return numerator;
        }
        else
        {
            return (double)numerator / denominator;
        }
    }
    else
    {
        return NAN;
    }
}
@end
