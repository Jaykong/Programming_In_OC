//
//  Calculator 2.m
//  Chp6
//
//  Created by lmz on 15/12/6.
//  Copyright © 2015年 lmz. All rights reserved.
//

#import "Calculator 2.h"

@implementation Calculator_2
{
    double accumulator;
}

- (void)setAccumulator:(double)value
{
    accumulator = value;
    NSLog(@"= %f", self.accumulator);
}

- (void)end
{
    NSLog(@"= %f", self.accumulator);
    NSLog(@"End of Calculations.");
}

- (double)accumulator
{
    return accumulator;
}

- (void)add: (double)value
{
    accumulator += value;
    NSLog(@"= %f", self.accumulator);
}

- (void)subtract: (double)value
{
    accumulator -= value;
    NSLog(@"= %f", self.accumulator);
}

- (void)multiply: (double)value
{
    accumulator *= value;
    NSLog(@"= %f", self.accumulator);
}

- (void)divide: (double)value
{
    accumulator /= value;
    NSLog(@"= %f", self.accumulator);
}
@end
