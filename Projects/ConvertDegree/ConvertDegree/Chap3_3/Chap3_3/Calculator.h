//
//  Calculator.h
//  Chap3_3
//
//  Created by kongyunpeng on 11/21/15.
//  Copyright © 2015 kongyunpeng. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Calculator : NSObject

-(void) setAccumulator: (double) value;
-(void) clear;
-(double) accumulator;

// arithmetic methods
-(double) add: (double) value;
-(double) subtract: (double) value;
-(double) multiply: (double) value;
-(double) divide: (double) value;
#pragma mark - memory
-(double) memoryClear;// clear memory
-(double) memoryStore;// set memory to accumulator
-(double) memoryRecall;// set accumulator to memory
-(double) memoryAdd: (double) value;// add value into memory
-(double) memorySubtract: (double) value;// subtract value from memory

@end

@interface Calculator(moreOperations) {
    
}
-(double) changeSign;// change sign of accumulator
-(double) reciprocal;// 1/accumulator
-(double) xSquared;// accumulator squared



@end




