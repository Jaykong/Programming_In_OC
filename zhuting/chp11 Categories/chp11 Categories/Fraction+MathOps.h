//
//  Fraction+MathOps.h
//  chp11 Categories
//
//  Created by Wenslow on 15/12/1.
//  Copyright © 2015年 Wenslow. All rights reserved.
//

#import "Fraction.h"

@interface Fraction (MathOps)
- (Fraction *) add: (Fraction *)f;
- (Fraction *) subtract: (Fraction *)f;
- (Fraction *) multiply: (Fraction *)f;
- (Fraction *) divide: (Fraction *)f;

#pragma mark - exercise 1#
- (Fraction *) invert: (Fraction *)f;

@end
