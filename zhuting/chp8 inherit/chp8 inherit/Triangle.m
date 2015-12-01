//
//  Triangle.m
//  chp8 inherit
//
//  Created by Wenslow on 15/11/26.
//  Copyright © 2015年 Wenslow. All rights reserved.
//

#import "Triangle.h"

@implementation Triangle

@synthesize a, b, c;

- (double) area//计算面积
{
    double p, S;
    p = (a + b +c) / 2;
    S = p * (p - a) * (p - b) * (p - c);
    return sqrt(S );
}

- (double) perimeter//计算周长
{
    return a + b + c;
}

@end
