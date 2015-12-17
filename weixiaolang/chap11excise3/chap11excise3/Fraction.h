//
//  Fraction.h
//  chap11excise3
//
//  Created by 笑郎 on 15/12/17.
//  Copyright © 2015年 Miami Heat. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSCompairsonMethods.h"

@interface Fraction : NSObject<NSCompairsonMethods>
@property int numerator, denominator;
-(void)print;
-(void)setTo:(int)n over: (int)d;
-(double)converToNum;
-(void)reduce;

@end
