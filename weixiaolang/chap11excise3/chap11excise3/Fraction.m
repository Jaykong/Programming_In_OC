//
//  Fraction.m
//  chap11excise3
//
//  Created by 笑郎 on 15/12/17.
//  Copyright © 2015年 Miami Heat. All rights reserved.
//

#import "Fraction.h"

@implementation Fraction
@synthesize numerator, denominator;
-(void)print{
    NSLog(@"%i / %i", numerator, denominator);
}
-(double)converToNum{
    if  (denominator != 0) {
        return (double)numerator/denominator;
    }else{
        return NAN;
    }
}
-(void)reduce{
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
-(void)setTo:(int)n over:(int)d{
    numerator = n;
    denominator = d;
}

-(BOOL)isEqualTO:(id)f {
    BOOL Equal;
    id a;
    Fraction *fracResult = [[Fraction alloc]init];
    a = fracResult;
    fracResult.numerator = self.numerator * [f denominator] -  self.denominator * [f numerator];
    if ([a numerator] == 0) {
        Equal = YES;
    }
    return Equal;
    
    
}
-(BOOL)isLessThanOrEqualTo:(id)f{
    BOOL lessThanOrEqual;
    Fraction *result = [[Fraction alloc]init];
    result.numerator = self.numerator * [f denominator] -  self.denominator * [f numerator];
    if (result.numerator <= 0) {
        lessThanOrEqual = YES;
    }
    return lessThanOrEqual;
}
-(BOOL)isLessThan:(id)f{
    BOOL lessThan;
    Fraction *result = [[Fraction alloc]init];
    result.numerator = self.numerator * [f denominator] -  self.denominator * [f numerator];
    if (result.numerator < 0) {
        lessThan = YES;
    }
    return lessThan;
    
}
-(BOOL)isGreaterThanOrEqualTo:(id)f{
    BOOL greaterThanOrEqual;
    Fraction *result = [[Fraction alloc]init];
    result.numerator = self.numerator * [f denominator] -  self.denominator * [f numerator];
    if (result.numerator >= 0) {
        greaterThanOrEqual = YES;
    }
    return greaterThanOrEqual;
}
-(BOOL)isNotEqualTo:(id)f{
    BOOL notEqual;
    Fraction *result = [[Fraction alloc]init];
    result.numerator = self.numerator * [f denominator] -  self.denominator * [f numerator];
    if (result.numerator != 0) {
        notEqual = YES;
        NSLog(@"notEqual");
        
    }
    return  notEqual;
}
-(BOOL)isGreaterThan:(id)f{
    BOOL greaterThan;
    Fraction *result = [[Fraction alloc]init];
    result.numerator = self.numerator * [f denominator] -  self.denominator * [f numerator];
    
    if (result.numerator > 0) {
        greaterThan = YES;
    }
    return  greaterThan;
    
}


@end
