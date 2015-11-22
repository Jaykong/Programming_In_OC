//
//  Calculator.m
//  Chap3_3
//
//  Created by kongyunpeng on 11/21/15.
//  Copyright © 2015 kongyunpeng. All rights reserved.
//

#import "Calculator.h"




@implementation Calculator
{
    double accumulator;
    double memory;
}
#pragma mark - memory
-(double) memoryClear// clear memory {
{
    memory = 0;
    return memory;
}
-(double) memoryStore// set memory to accumulator
{
    memory = accumulator;
    return memory;
}
-(double) memoryRecall// set accumulator to memory
{
    accumulator = memory;
    return memory;
}
-(double) memoryAdd: (double) value// add value into memory
{
    memory += value;
    return memory;
}
-(double) memorySubtract: (double) value// subtract value from memory
{
    memory -= value;
    return memory;
}



-(void) setAccumulator: (double) value
{
accumulator = value;
}

-(void) clear
{
accumulator = 0;
}

-(double) accumulator
{
return accumulator;
}

-(double) add: (double) value
{
return  accumulator += value;
}

-(double) subtract: (double) value
{
return  accumulator -= value;
}

-(double) multiply: (double) value
{
return  accumulator *= value;
}
-(double)divide:(double)value {
    return accumulator /= value;
}
@end

@implementation Calculator(moreOperations)
-(double) changeSign// change sign of accumulator
{
    return -accumulator;
}
-(double) reciprocal;// 1/accumulator
{
    return 1/accumulator;
}
-(double) xSquared;// accumulator squared
{
    return accumulator * accumulator;
}


@end
