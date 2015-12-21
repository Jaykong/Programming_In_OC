//
//  Comparison.m
//  chp11 Categories
//
//  Created by Wenslow on 15/12/2.
//  Copyright © 2015年 Wenslow. All rights reserved.
//

#import "Comparison.h"

@implementation Fraction (Comparison)

#pragma mark - exercise 2#
- (BOOL) isEqualTo:(Fraction *)f;
{
    if (self.numerator / self.denominator == f.numerator / f.denominator) {
        return YES;
    }else{
        return NO;
    }
}

- (int) compare: (Fraction *)f
{
    if (self.numerator / self.denominator < f.numerator / f.denominator) {
        return -1;
    }else if (self.numerator / self.denominator == f.numerator / f.denominator){
        return 0;
    }else{
        return 1;
    }
}

@end
