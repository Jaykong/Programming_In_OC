//
//  Calculator+Trig.m
//  chp11 Categories
//
//  Created by Wenslow on 15/12/3.
//  Copyright © 2015年 Wenslow. All rights reserved.
//

#import "Calculator+Trig.h"

#pragma mark - exercise 4#
@implementation Calculator (Trig)

-(double)sin
{
    double result;
    result = sin(self.accumulator);
    NSLog(@"%g", result);
    return result;
}

-(double)cos
{
    double result;
    result = cos(self.accumulator);
    NSLog(@"%g", result);
    return result;
}

-(double)tan
{
    double result;
    result = tan(self.accumulator);
    NSLog(@"%g", result);
    return result;
}

@end
