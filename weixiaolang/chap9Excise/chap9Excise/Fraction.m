//
//  Fraction.m
//  chap9Excise
//
//  Created by 笑郎 on 15/12/3.
//  Copyright © 2015年 Miami Heat. All rights reserved.
//

#import "Fraction.h"

@implementation Fraction
@synthesize numerator,denominator;
-(void)print
{
    NSLog(@"%i/%i",numerator,denominator);
}
-(double)converToNum
{
    if (denominator !=0)
        return (double)numerator/denominator;
    else
        return NAN;
}
-(void)setTo:(int)n over:(int)d
{
    numerator=n;
    denominator=d;
}
-(id)fracAdd:(id)f
{
    id result;
    Fraction *resultFra = [[Fraction alloc]init];
    result = resultFra;
    
    [result setNumerator:numerator * [f denominator] + denominator * [f numerator]];
    [result setDenominator:denominator * [f denominator]];
    [result reduce];
    return result;
}
-(void)reduce
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


@end
