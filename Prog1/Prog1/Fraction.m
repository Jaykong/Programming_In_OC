//
//  Fraction.m
//  Prog1
//
//  Created by kongyunpeng on 11/20/15.
//  Copyright © 2015 kongyunpeng. All rights reserved.
//

#import "Fraction.h"

@implementation Fraction
{
    int numerator;
    int denominator;
}
-(void)print{
    NSLog(@"Fraction is %i/%i",numerator,denominator);
}
-(void)setNumerator:(int)n{
    numerator = n;
}
-(void)setDenominator:(int)d{
    denominator = d;
}
@end
