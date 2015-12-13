//
//  Fraction.h
//  Chp6
//
//  Created by lmz on 15/12/6.
//  Copyright © 2015年 lmz. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Fraction : NSObject
- (void)print;
- (void)setNumerator: (int)n;
- (void)setDenominator: (int)n;
- (int)numerator;
- (int)denominator;
- (double)convertToNum;
@end
