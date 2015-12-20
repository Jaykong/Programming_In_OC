//
//  Fraction.h
//  chp7 class
//
//  Created by Wenslow on 15/11/26.
//  Copyright © 2015年 Wenslow. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Fraction : NSObject

@property int numerator, denominator;

- (void) print: (BOOL) isRedu;
- (void) setTo: (int)n over: (int)d;
- (double) converToNum;
- (id) add111: (id)f;
- (void) reduce;
+ (int)addCount;

//- (Fraction *) subtract: (Fraction *)f;
//- (Fraction *) multiply: (Fraction *)f;
//- (Fraction *) divide: (Fraction *)f;
@end

#pragma mark - exercise 3#
@interface Fraction (NSComparisonMethods)
-(BOOL) isEqualToID:(id)object;
-(BOOL) isLessThanOrEqualTo:(id)object;
-(BOOL) isLessThan:(id)object;
-(BOOL) isGreaterThanOrEqualTo:(id)object;
-(BOOL) isGreaterThan:(id)object;
-(BOOL) isNotEqualTo:(id)object;
@end
