//
//  Calculator.m
//  Chp6
//
//  Created by lmz on 15/12/6.
//  Copyright © 2015年 lmz. All rights reserved.
//

#import "Calculator.h"

@implementation Calculator
{
    double accumulator;
}

- (void)setAccumulator: (double)value
{
    accumulator = value;
}
- (void)clear
{
    accumulator = 0;
}
- (double)accumulator
{
    return accumulator;
}
- (void)add: (double)value
{
    accumulator += value;
}
- (void)subtract: (double)value
{
    accumulator -= value;
}
- (void)multiply: (double)value
{
    accumulator *= value;
}
- (void)divide: (double)value
{
    accumulator /= value;
}

@end
