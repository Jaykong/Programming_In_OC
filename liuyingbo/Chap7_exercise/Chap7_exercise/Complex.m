//
//  Complex.m
//  Chap7_exercise
//
//  Created by Yingbo Liu on 12/3/15.
//  Copyright © 2015 Yingbo Liu. All rights reserved.
//

#import "Complex.h"


@implementation Complex
{
    double real, imaginary;
    
}

-(void) setReal: (double) a{
    
    
    real = a;
}
-(void) setImaginary: (double) b{
    
    imaginary = b;
}
-(void) print{
    
    
    NSLog(@"%f + %fi", real , imaginary);
}
-(double) real{
    
    return real;
    
    
}
-(double) imaginary{
    
    return imaginary;
    
}

-(Complex *) add: (Complex *) complexNum{
    Complex *newComp = [[Complex alloc] init];
    
    
    newComp.real = real + complexNum.real;
    newComp.imaginary = imaginary +complexNum.imaginary;
    
    return newComp;
    
}


@end
