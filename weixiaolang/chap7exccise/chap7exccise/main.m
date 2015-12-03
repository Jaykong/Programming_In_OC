//
//  main.m
//  chap7exccise
//
//  Created by 笑郎 on 15/11/29.
//  Copyright © 2015年 Miami Heat. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Fraction : NSObject
@property int numerator,denominator;
-(void)print;
-(double)converToNum;
-(void)setNumerator:(int)n andDenominator:(int)d;
-(Fraction *)add:(Fraction *)f;
-(void)reduce;
-(Fraction *)subtract: (Fraction *) f;
-(Fraction *)multiply: (Fraction *) f;
-(Fraction *)divide: (Fraction *) f;

@end

@implementation Fraction

@synthesize numerator , denominator ;
-(void)print
{
    BOOL reduce=YES;
    int u = numerator;
    int v = denominator;
    int temp;
    
    while (v != 0) {
        temp = u % v;
        u = v;
        v = temp;
    }
    
    if (u != 0) {
        reduce = YES;
    }
    else
        reduce = NO;
    
    if (reduce == YES ) {
        [self reduce];
    }

    
    if (numerator * denominator < 0) {
        if (numerator < 0)
            NSLog(@"- %i / %i ", - numerator,denominator);
    
        else
            NSLog(@"- %i / %i ", numerator , - denominator);
        }
   else
       NSLog(@" %i / %i ",numerator , denominator);
    
    
    
    if (numerator > denominator) {
        NSLog(@" %i %i/%i",numerator / denominator , numerator % denominator , denominator);
    }
    
}
-(double)converToNum
{
    if (denominator == 0) {
        return NAN;
    }
    else
        return (double) numerator / denominator;
}
-(void)setNumerator:(int)n andDenominator:(int)d
{
    denominator = d;
    numerator = n;
}
-(Fraction *)add:(Fraction *)f
{
    Fraction *result=[[Fraction alloc]init];
    result.numerator = numerator * f.denominator + denominator * f.numerator;
    result.denominator = denominator * f.denominator;
//    [result reduce];
    return result;
}
-(void)reduce
{
    int u = numerator, v = denominator , temp;
    while (v != 0 ) {
        temp = u % v;
        u = v;
        v = temp;
    }
    numerator /= u;
    denominator /= u;
}
-(Fraction *)subtract:(Fraction *)f
{
    Fraction *result= [[Fraction alloc]init];
    result.numerator = numerator * f.denominator - denominator * f.numerator;
    result.denominator = denominator * f.denominator;
//    [result reduce];
    return result;
}

-(Fraction *)multiply:(Fraction *)f
{
    Fraction *result = [[Fraction alloc]init];
    result.numerator = numerator * f.numerator;
    result.denominator = denominator * f.denominator;
//    [result reduce];
    
    return result;
}
-(Fraction *)divide:(Fraction *)f
{
    Fraction *result = [[Fraction alloc]init];
    result.numerator = numerator * f.denominator;
    result.denominator = denominator * f.numerator;
//    [result reduce];
    return result;
}

@end


@interface Fraction1 : NSObject
@property int numertor,denominator;
-(void)print;
-(double)converToNum;

@end

@implementation Fraction1

-(void)print
{
    NSLog(@" %i / %i ", _numertor , _denominator);
}
-(double)converToNum
{
    if (_denominator == 0) {
        return NAN;
    }
    else
        return (double) _numertor / _denominator;
}
@end


@interface Complex :NSObject
@property double real,imaginary;
-(void)print;
-(void)setReal : (double)a andImaginary : (double)b;
-(Complex *) add: (Complex *) complexNum;
@end

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


int main(int argc, const char * argv[]) {
    @autoreleasepool {
 
        
#pragma mark-excise1#
        Fraction * fra1 = [[Fraction alloc]init];
        Fraction * fra2 = [[Fraction alloc]init];
        
        Fraction *resultFraction;
        
        [fra1 setNumerator:30 andDenominator:12];
        [fra2 setNumerator:1 andDenominator:12];
        
        [fra1 print];
        NSLog(@" + - * /");
        [fra2 print];
        NSLog(@"=");
        
        resultFraction = [fra1 add: fra2];
//        resultFraction = [fra1 multiply:fra2];
//        resultFraction = [fra1 subtract:fra2];
//        resultFraction = [fra1 divide:fra2];
        
        [resultFraction print];
        
        
#pragma mark-excise2#

        //@implementation部分的方法
/*
        -(void)print
        {
            BOOL reduce=YES;
            int u = numerator;
            int v = denominator;
            int temp;
            
            while (v != 0) {
                temp = u % v;
                u = v;
                v = temp;
            }
            
            if (u != 0) {
                reduce = YES;
            }
            else
                reduce = NO;
            
            if (reduce == YES ) {
                [self reduce];
            }
            
            NSLog(@"%i/%i",numerator,denominator);
        }
*/
        
        
#pragma mark-excise3#
//@implementation中的-(void)print方法修改如下：

 /*
  -(void)print
  {
  BOOL reduce=YES;
  int u = numerator;
  int v = denominator;
  int temp;
  
  while (v != 0) {
  temp = u % v;
  u = v;
  v = temp;
  }
  
  if (u != 0) {
  reduce = YES;
  }
  else
  reduce = NO;
  
  if (reduce == YES ) {
  [self reduce];
  }
  
  
  if (numerator * denominator < 0) {
  if (numerator < 0)
  NSLog(@"- %i / %i ", - numerator,denominator);
  
  else
  NSLog(@"- %i / %i ", numerator , - denominator);
  }
  else
  NSLog(@" %i / %i ",numerator , denominator);
 }

*/
        
#pragma mark-excise4#
        
        //@implementation中的-(void)print方法修改如下：
/*
 
 -(void)print
 {
 BOOL reduce=YES;
 int u = numerator;
 int v = denominator;
 int temp;
 
 while (v != 0) {
 temp = u % v;
 u = v;
 v = temp;
 }
 
 if (u != 0) {
 reduce = YES;
 }
 else
 reduce = NO;
 
 if (reduce == YES ) {
 [self reduce];
 }
 
 
 if (numerator * denominator < 0) {
 if (numerator < 0)
 NSLog(@"- %i / %i ", - numerator,denominator);
 
 else
 NSLog(@"- %i / %i ", numerator , - denominator);
 }
 else
 NSLog(@" %i / %i ",numerator , denominator);
 
 
 
 if (numerator > denominator) {
 NSLog(@" %i %i/%i",numerator / denominator , numerator % denominator , denominator);
 }
 
 }

 
 */
        
        
#pragma mark-excise5#
        Fraction1 *test5 = [[Fraction1 alloc]init];
        [test5 setNumertor:1];
        test5.denominator = 3;
        
        NSLog(@"The numerator is : %i , and the denominator is : %i",test5.numertor, test5.denominator);
        
#pragma mark-excise6#
        Complex *XLCom1 = [[Complex alloc] init];
        Complex *XLCom2 = [[Complex alloc] init];
        [XLCom1 setReal:5.3 andImaginary:7];
        [XLCom2 setReal:2.7 andImaginary:4];
        
        Complex * resultComplex ;
        
        [XLCom1 print];
        NSLog(@" + ");
        [XLCom2 print];
        NSLog(@" = ");
        
        resultComplex = [XLCom1 add : XLCom2];
        [resultComplex print];
        
        
        
        


        

        

        
        

    }
    return 0;
}
