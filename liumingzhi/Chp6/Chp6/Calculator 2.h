//
//  Calculator 2.h
//  Chp6
//
//  Created by lmz on 15/12/6.
//  Copyright © 2015年 lmz. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Calculator_2 : NSObject

- (void)setAccumulator: (double)value;
- (double)accumulator;
- (void)end;
- (void)add: (double)value;
- (void)subtract: (double)value;
- (void)multiply: (double)value;
- (void)divide: (double)value;

@end
