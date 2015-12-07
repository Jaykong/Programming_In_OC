//
//  Complex.m
//  chap9Excise
//
//  Created by 笑郎 on 15/12/3.
//  Copyright © 2015年 Miami Heat. All rights reserved.
//

#import "Complex.h"

@implementation Complex
@synthesize real, imaginary;
-(void)print
{
    NSLog(@"%g + %g i",real, imaginary);
}
-(void)setReal:(double)r andImaginary:(double)i
{
    real = r;
    imaginary = i;
}
-(id)comAdd:(id)f{
    id result;
    Complex *comResult = [[Complex alloc]init];
    result = comResult;

    [result setReal:real + [f real]];
    [result setImaginary:imaginary + [f imaginary]];
    return result;
}

@end
