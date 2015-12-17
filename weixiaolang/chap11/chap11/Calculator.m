//
//  Calculator.m
//  chap11
//
//  Created by 笑郎 on 15/12/17.
//  Copyright © 2015年 Miami Heat. All rights reserved.
//

#import "Calculator.h"

@implementation Calculator
{
    double accumulator;
}
-(void)setAccumulator:(double)value
{
    accumulator=value;
}
-(void)clear
{
    accumulator=0;
}
-(double)accumulator
{
    return accumulator;
}
-(void)add:(double)value
{
    accumulator += value;
}
-(void)subtract:(double)value
{
    accumulator -= value;
}
-(void)multiply:(double)value
{
    accumulator *= value;
}
-(void)divide:(double)value
{
    accumulator /= value;
}
-(void)print
{
    NSLog(@"The answer is accumulator = %f",accumulator);
}

@end
