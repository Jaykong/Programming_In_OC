//
//  Fraction+Comparison.m
//  chap11
//
//  Created by 笑郎 on 15/12/17.
//  Copyright © 2015年 Miami Heat. All rights reserved.
//

#import "Fraction+Comparison.h"
#import "Fraction+MathOps.h"

@implementation Fraction (Comparison)
-(BOOL)isEqualTo:(Fraction *)f{
    Fraction *result = [[Fraction alloc]init];
    result = [self sub:f];
    BOOL equalTo;
    if (result.numerator == 0) {
        equalTo = YES;
        //return equalTo;
    }else {
        equalTo = NO;
        //return equalTo;
    }
    return equalTo;

}
-(int)compare:(Fraction *)f{
    Fraction *result = [[Fraction alloc]init];
    result = [self sub:f];
    if (result.numerator == 0) {
        return 0;
    }else if(result.numerator * result.denominator < 0){
        return -1;
    }else{
        return 1;
    }
}

@end
