//
//  main.m
//  chp11 Categories
//
//  Created by Wenslow on 15/12/1.
//  Copyright © 2015年 Wenslow. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fraction.h"
#import "Fraction+MathOps.h"
#import "Comparison.h"
#import "Calculator.h"
#import "Calculator+Trig.h"
#import "Square.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Fraction *aFraction = [[Fraction alloc]init];
        Fraction *bFraction = [[Fraction alloc]init];
        
        [aFraction setTo:2 over:1];
        [bFraction setTo:1 over:2];
        
#pragma mark - exercise 1#
        [[aFraction invert:aFraction] print:YES];
        
#pragma mark - exercise 2#
        if ([aFraction isEqualTo:bFraction]) {
            NSLog(@"aFraction is euqal to bFraction");
        }else{
            NSLog(@"aFraction is not euqal to bFraction");
        }
        NSLog(@"%d", [aFraction compare:bFraction]);
      
#pragma mark - exercise 3#
        id tempFraction = bFraction;
        if ([aFraction isEqualToID:tempFraction]) {
            NSLog(@"%d / %d is equal to %d / %d", aFraction.numerator, aFraction.denominator, [tempFraction numerator], [tempFraction denominator]);
        }
        if ([aFraction isLessThanOrEqualTo:tempFraction]) {
            NSLog(@"%d / %d is less than or equal to %d / %d", aFraction.numerator, aFraction.denominator, [tempFraction numerator], [tempFraction denominator]);
        }
        [aFraction setTo:1 over:4];
        if ([aFraction isLessThan:tempFraction]) {
            NSLog(@"%d / %d is less than to %d / %d", aFraction.numerator, aFraction.denominator, [tempFraction numerator], [tempFraction denominator]);
        }
        [aFraction setTo:3 over:4];
        if ([aFraction isGreaterThanOrEqualTo:tempFraction]) {
            NSLog(@"%d / %d is greater than or equal to %d / %d", aFraction.numerator, aFraction.denominator, [tempFraction numerator], [tempFraction denominator]);
        }
        if ([aFraction isGreaterThan:tempFraction]) {
            NSLog(@"%d / %d is greater than  %d / %d", aFraction.numerator, aFraction.denominator, [tempFraction numerator], [tempFraction denominator]);
        }
        if ([aFraction isNotEqualTo:tempFraction]) {
            NSLog(@"%d / %d is not equal to %d / %d", aFraction.numerator, aFraction.denominator, [tempFraction numerator], [tempFraction denominator]);
        }
        
#pragma mark - exercise 4#
        Calculator *cal = [[Calculator alloc]init];
        cal.accumulator = 45;
        
        [cal sin];
        [cal cos];
        [cal tan];
        
#pragma mark - exercise 5#
        Square *squ = [[Square alloc]init];
        NSLog(@"The side of squ is %lf", squ.width);
        
        Square *squ22 = [[Square alloc]initWithSide:5];
        NSLog(@"The side of squ22 is %lf", squ22.width);
    }
    return 0;
}
