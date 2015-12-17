//
//  Fraction+MathOps.h
//  chap11
//
//  Created by 笑郎 on 15/12/17.
//  Copyright © 2015年 Miami Heat. All rights reserved.
//

#import "Fraction.h"

@interface Fraction (MathOps)
-(Fraction *)add:(Fraction *)f;
-(Fraction *)mul:(Fraction *)f;
-(Fraction *)sub:(Fraction *)f;
-(Fraction *)div:(Fraction *)f;
-(Fraction *)invert;
@end
