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

#pragma mark - exercise 1#
- (Fraction *) subtract: (Fraction *)f;
- (Fraction *) multiply: (Fraction *)f;
- (Fraction *) divide: (Fraction *)f;
@end
