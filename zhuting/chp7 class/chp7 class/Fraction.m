//
//  Fraction.m
//  chp7 class
//
//  Created by Wenslow on 15/11/26.
//  Copyright © 2015年 Wenslow. All rights reserved.
//

#import "Fraction.h"

@implementation Fraction
#pragma mark - exercise 4#
{
    int numerator, denominator;
}

- (void)setNumerator:(int)n
{
    numerator = n;
}
- (int)numerator
{
    return numerator;
}

- (void)setDenominator:(int)d
{
    denominator = d;
}
- (int)denominator
{
    return denominator;
}

#pragma mark - exercise 2#
-(void) print: (BOOL) isRedu
{
    if (denominator == 0){
        NSLog(@"NAN");
    }else if (numerator % denominator == 0){
        NSLog(@"%i", numerator = numerator / denominator);
    }else if (numerator == 0){
        NSLog(@"0");
    }else if (isRedu){
        Fraction *reduFrac = [[Fraction alloc] init];
        [reduFrac setTo: numerator over: denominator];
        [reduFrac reduce];
        if (reduFrac.denominator < 0){
            NSLog(@"%i/%i", - reduFrac.numerator, - reduFrac.denominator);
        }
        else{
            NSLog(@"%i/%i", reduFrac.numerator, reduFrac.denominator);
        }
    }else{
        NSLog(@"%i/%i", numerator, denominator);
    }
    
}

- (void)setTo: (int)n over: (int)d
{
    numerator = n;
    denominator = d;
}

- (double) converToNum
{
    if (denominator != 0) {
        return (double)numerator / denominator;
    }else{
        return NAN;
    }
}

- (void) reduce
{
    int u = numerator;
    int v = denominator;
    int temp;
    while (v != 0) {
        temp = u % v;
        u = v;
        v = temp;
    }
    numerator /= u;
    denominator /= u;
}

- (Fraction *) add: (Fraction *)f
{
    Fraction *result = [[Fraction alloc]init];
    //添加两个分数
    result.numerator = numerator * f.denominator + denominator * f.numerator;
    result.denominator = denominator * f.denominator;
    
    [result reduce];
    return result;
}

#pragma mark - exercise 1#
- (Fraction *) subtract: (Fraction *)f
{
    Fraction *result = [[Fraction alloc]init];
    //添加两个分数
    result.numerator = numerator * f.denominator - denominator * f.numerator;
    result.denominator = denominator * f.denominator;
    
    [result reduce];
    return result;
}

- (Fraction *) multiply: (Fraction *)f
{
    Fraction *result = [[Fraction alloc]init];
    //添加两个分数
    result.numerator = numerator * f.numerator;
    result.denominator = denominator * f.denominator;
    
    [result reduce];
    return result;
}

- (Fraction *) divide: (Fraction *)f
{
    Fraction *result = [[Fraction alloc]init];
    //添加两个分数
    result.numerator = numerator * f.denominator;
    result.denominator = denominator * f.numerator;
    
    [result reduce];
    return result;
}
    
@end
