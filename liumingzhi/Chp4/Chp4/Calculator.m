//
//  Calculator.m
//  Chp4
//
//  Created by lmz on 15/12/6.
//  Copyright © 2015年 lmz. All rights reserved.
//

#import "Calculator.h"

@implementation Calculator
{
    double accumulator;
    double memory;
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

- (double)add: (double)value
{
    accumulator += value;
    NSLog(@"the result of + is %f", accumulator);
    return accumulator;
}

- (double)subtract: (double)value
{
    accumulator -= value;
    NSLog(@"the result of - is %f", accumulator);
    return accumulator;
}

- (double)multiply: (double)value
{
    accumulator *= value;
    NSLog(@"the result of * is %f", accumulator);
    return accumulator;
}

- (double)divide: (double)value
{
    accumulator /= value;
    NSLog(@"the result of / is %f", accumulator);
    return accumulator;
}

- (double)changeSign
{
    accumulator = -accumulator;
    return accumulator;
}

- (double)reciprocal
{
    accumulator = 1 / accumulator;
    return accumulator;
}

- (double)xSquared
{
    accumulator = accumulator * accumulator;
    return accumulator;
}

- (void)setMemory:(double)value
{
    memory = value;
}

- (double)memory
{
    return memory;
}

- (double)memoryClear
{
    memory = 0;
    return memory;
}

- (double)memoryStore
{
    memory = accumulator;
    return memory;
}

- (double)memoryRecall
{
    accumulator = memory;
    return memory;
}

- (double)memoryAdd: (double)value
{
    memory += value;
    return memory;
}

- (double)memorySubtract: (double)value
{
    memory -= value;
    return memory;
}

@end
