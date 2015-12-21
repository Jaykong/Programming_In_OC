//
//  Calculator.h
//  chp11 Categories
//
//  Created by Wenslow on 15/12/3.
//  Copyright © 2015年 Wenslow. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <math.h>
@interface Calculator: NSObject

- (void)setAccumulator: (double)value;
- (void)clear;
- (double)accumulator;
- (void)add: (double)value;//加
- (void)subtract: (double)value;//减
- (void)multiply: (double)value;//乘
- (void)divide: (double)value;//除

@end
