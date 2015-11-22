//
//  Complex.m
//  Chap3_3
//
//  Created by kongyunpeng on 11/21/15.
//  Copyright © 2015 kongyunpeng. All rights reserved.
//

#import "Complex.h"

@implementation Complex
{
    double imaginary,real;
}
-(void) setReal: (double) a {
    real = a;
}
-(void) setImaginary: (double) b{
    imaginary = b;
}
-(void) print// a + bi
{
    NSLog(@"complex is %g + %gi",real,imaginary);
}
-(double) real{
    return real;
}
-(double) imaginary{
    return imaginary;
}
@end
