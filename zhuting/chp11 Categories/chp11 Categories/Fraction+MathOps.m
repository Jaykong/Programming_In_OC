//
//  Fraction+MathOps.m
//  chp11 Categories
//
//  Created by Wenslow on 15/12/1.
//  Copyright © 2015年 Wenslow. All rights reserved.
//

#import "Fraction+MathOps.h"

@implementation Fraction (MathOps)

#pragma mark - exercise 1#
- (Fraction *) invert: (Fraction *)f
{
    double temp = self.numerator;
    self.numerator = self.denominator;
    self.denominator = temp;
    return self;
}

- (Fraction *) add: (Fraction *)f
{
    Fraction *result = [[Fraction alloc]init];
    //添加两个分数
    result.numerator = self.numerator * f.denominator + self.denominator * f.numerator;
    result.denominator = self.denominator * f.denominator;
    
    [result reduce];
    return result;
}

- (Fraction *) subtract: (Fraction *)f
{
    Fraction *result = [[Fraction alloc]init];
    //添加两个分数
    result.numerator = self.numerator * f.denominator - self.denominator * f.numerator;
    result.denominator = self.denominator * f.denominator;
    
    [result reduce];
    return result;
}

- (Fraction *) multiply: (Fraction *)f
{
    Fraction *result = [[Fraction alloc]init];
    //添加两个分数
    result.numerator = self.numerator * f.numerator;
    result.denominator = self.denominator * f.denominator;
    
    [result reduce];
    return result;
}

- (Fraction *) divide: (Fraction *)f
{
    Fraction *result = [[Fraction alloc]init];
    //添加两个分数
    result.numerator = self.numerator * f.denominator;
    result.denominator = self.denominator * f.numerator;
    
    [result reduce];
    return result;
}


@end

