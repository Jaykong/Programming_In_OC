//
//  Calculator.h
//  Chp6
//
//  Created by lmz on 15/12/6.
//  Copyright © 2015年 lmz. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Calculator : NSObject

- (void)setAccumulator: (double)value;
- (void)clear;
- (double)accumulator;
- (void)add: (double)value;
- (void)subtract: (double)value;
- (void)multiply: (double)value;
- (void)divide: (double)value;

@end
