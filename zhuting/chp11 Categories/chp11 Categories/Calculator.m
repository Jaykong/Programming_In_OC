//
//  Calculator.m
//  chp11 Categories
//
//  Created by Wenslow on 15/12/3.
//  Copyright © 2015年 Wenslow. All rights reserved.
//

#import "Calculator.h"

@implementation Calculator
{
    double accumulator;//累加器
}

- (void)setAccumulator:(double)value
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
