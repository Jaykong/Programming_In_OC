//
//  Calculator.h
//  Chp4
//
//  Created by lmz on 15/12/6.
//  Copyright © 2015年 lmz. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Calculator : NSObject

- (void)setAccumulator: (double)value;
- (void)clear;
- (double)accumulator;
- (double)add: (double)value;
- (double)subtract: (double)value;
- (double)multiply: (double)value;
- (double)divide: (double)value;


- (double)changeSign;
- (double)reciprocal;
- (double)xSquared;


- (double)memoryClear;
- (double)memoryStore;
- (double)memoryRecall;
- (double)memoryAdd: (double)value;
- (double)memorySubtract: (double)value;
- (void)setMemory: (double)value;
- (double)memory;

@end
