//
//  Calculator.h
//  chap11
//
//  Created by 笑郎 on 15/12/17.
//  Copyright © 2015年 Miami Heat. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Calculator : NSObject
-(void)setAccumulator:(double) value;
-(void)clear;
-(double)accumulator;

-(void)add:(double)value;
-(void)subtract:(double)value;
-(void)multiply:(double)value;
-(void)divide:(double)value;
-(void)print;

@end
