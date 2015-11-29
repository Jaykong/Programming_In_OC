//
//  Complex.m
//  Complex
//
//  Created by 笑郎 on 15/11/30.
//  Copyright © 2015年 Miami Heat. All rights reserved.
//

#import "Complex.h"

@implementation Complex
@synthesize real,imaginary;
-(void)print
{
    NSLog(@"a+bi=%g+%gfi",real,imaginary);
    
}
-(Complex *) add: (Complex *) complexNum
{
    Complex *result = [[Complex alloc]init];
    
    result.real = real + complexNum.real;
    result.imaginary = imaginary + complexNum.imaginary;
    
    return result;
}

-(void)setReal:(double)a andImaginary:(double)b
{
    real = a;
    imaginary = b;
}

@end
