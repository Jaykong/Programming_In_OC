//
//  Fraction+MathOps.m
//  chap11
//
//  Created by 笑郎 on 15/12/17.
//  Copyright © 2015年 Miami Heat. All rights reserved.
//

#import "Fraction+MathOps.h"

@implementation Fraction (MathOps)
-(Fraction *)add:(Fraction *)f
{
    Fraction *result = [[Fraction alloc]init];
    result.numerator = (self.numerator * f.denominator) + (self.denominator * f.numerator);
    result.denominator = self.denominator * f.denominator;
    [result reduce];
    return result;
}
-(Fraction *)mul:(Fraction *)f
{
    Fraction *result = [[Fraction alloc]init];
    result.numerator = self.numerator * f.numerator;
    result.denominator = self.denominator * f.denominator;
    [result reduce];
    
    return  result;
}
-(Fraction *)sub:(Fraction *)f
{
    Fraction *result = [[Fraction alloc]init];
    result.numerator = self.numerator * f.denominator - self.denominator * f.numerator;
    result.denominator = self.denominator * f.denominator;
    [result reduce];
    
    return result;
    
}
-(Fraction *)div:(Fraction *)f{
    Fraction *result = [[Fraction alloc]init];
    result.numerator = self.numerator * f.denominator;
    result.denominator = self.denominator * f.numerator;
    [result reduce];
    
    return result;
    
}
-(Fraction *)invert{
    Fraction *result = [[Fraction alloc]init];
    result.numerator = self.denominator;
    result.denominator = self.numerator;
    return result;
}

@end
