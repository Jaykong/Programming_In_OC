//
//  Comparison.h
//  chp11 Categories
//
//  Created by Wenslow on 15/12/2.
//  Copyright © 2015年 Wenslow. All rights reserved.
//

#import "Fraction.h"

@interface Fraction (Comparison)

#pragma mark - exercise 2#
- (BOOL) isEqualTo:(Fraction *)f;
- (int) compare: (Fraction *)f;

@end
