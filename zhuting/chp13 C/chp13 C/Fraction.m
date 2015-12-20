//
//  Fraction.m
//  chp7 class
//
//  Created by Wenslow on 15/11/26.
//  Copyright © 2015年 Wenslow. All rights reserved.
//

#import "Fraction.h"

#pragma mark - exercise 2-1#
int gcd (int u, int v)
{
    int temp;
    while (v != 0) {
        temp = u % v;
        u = v;
        v = temp;
    }
    return u;
}

static int aCount = 0;

@implementation Fraction

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

#pragma mark - exercise 2-2#
- (void) reduce
{
    int i = gcd(numerator, denominator);
    numerator /= i;
    denominator /= i;
    
}


- (id) add111: (id)f
{

    
    extern int aCount;
    
    id dateValue = [[Fraction alloc]init];
    
    [dateValue setNumerator:numerator * [f denominator] + denominator * [f numerator]];
    [dateValue setDenominator:denominator * [f denominator]];
    

    
    aCount++;
    [dateValue reduce];
    return dateValue;
}

+ (int)addCount
{
    return aCount;
}


@end


@implementation Fraction (NSComparisonMethods)
-(BOOL)isEqualToID:(id)object
{
    if (self.denominator != 0 && [object denominator]!= 0) {
        double a, b;
        a = (double) self.numerator / self.denominator;
        b = (double) [object numerator] / [object denominator];
        if (a == b) {
            return YES;
        }else{
            return NO;
        }
    }else{
        NSLog(@"The denominator mustn't be zero");
        return NAN;
    }
}

-(BOOL) isLessThanOrEqualTo:(id)object
{
    if (self.denominator != 0 && [object denominator] != 0) {
        double a,b;
        a = (double) self.numerator / self.denominator;
        b = (double) [object numerator] / [object denominator];
        if (a <= b) {
            return YES;
        }else{
            return NO;
        }
    } else {
        NSLog(@"The denominator mustn't be zero");
        return NAN;
    }
}

-(BOOL) isLessThan:(id)object
{
    if (self.denominator != 0 && [object denominator] != 0) {
        double a,b;
        a = (double) self.numerator / self.denominator;
        b = (double) [object numerator] / [object denominator];
        if (a < b) {
            return YES;
        }else{
            return NO;
        }
    } else {
        NSLog(@"The denominator mustn't be zero");
        return NAN;
    }
}
-(BOOL) isGreaterThanOrEqualTo:(id)object
{
    if (self.denominator != 0 && [object denominator] != 0) {
        double a,b;
        a = (double) self.numerator / self.denominator;
        b = (double) [object numerator] / [object denominator];
        if (a >= b) {
            return YES;
        }else{
            return NO;
        }
    } else {
        NSLog(@"The denominator mustn't be zero");
        return NAN;
    }
}

-(BOOL) isGreaterThan:(id)object
{
    if (self.denominator != 0 && [object denominator] != 0) {
        double a,b;
        a = (double) self.numerator / self.denominator;
        b = (double) [object numerator] / [object denominator];
        if (a > b) {
            return YES;
        }else{
            return NO;
        }
    } else {
        NSLog(@"The denominator mustn't be zero");
        return NAN;
    }
}

-(BOOL)isNotEqualTo:(id)object
{
    if (self.denominator != 0 && [object denominator]!= 0) {
        double a, b;
        a = (double)self.numerator / self.denominator;
        b = (double) [object numerator] / [object denominator];
        if (a != b) {
            return YES;
        }else{
            return NO;
        }
    } else {
        NSLog(@"The denominator mustn't be zero");
        return NAN;
    }
}

@end