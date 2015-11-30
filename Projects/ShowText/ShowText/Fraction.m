//
//  Fraction.m
//  ShowText
//
//  Created by trainer on 11/25/15.
//  Copyright © 2015 trainer. All rights reserved.
//

#import "Fraction.h"

@implementation Fraction
{
    int denominator;
    int numerator;
}
-(void)setNumerator:(int)n {
    numerator = n;
}
-(void)setDenominator:(int)d {
    denominator = d;
}
-(int)returnDenominator {
  return   denominator;
}
-(int)returnNumerator {
    return numerator;
}
@end
