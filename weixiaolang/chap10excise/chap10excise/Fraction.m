//
//  Fraction.m
//  chap10excise
//
//  Created by 笑郎 on 15/12/3.
//  Copyright © 2015年 Miami Heat. All rights reserved.
//

#import "Fraction.h"
int gCount = 0;
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
    numerator = n;
    denominator = d;
}
-(Fraction *)add:(Fraction *)f
{
    Fraction *result = [[Fraction alloc]init];
    result.numerator = numerator * f.denominator + denominator * f.numerator;
    result.denominator = denominator * f.denominator;
    [self reduce];
    gCount++;

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
-(Fraction *)init
{
    return [self initWith: 0 over:0 ];
}
-(Fraction *)initWith:(int)n over:(int)d
{
    self = [super init];
    if (self) {
        [self setTo:n  over:d];
    }
    return self;
}



@end
