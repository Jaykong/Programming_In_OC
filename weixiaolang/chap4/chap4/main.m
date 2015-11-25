//
//  main.m
//  chap4
//
//  Created by 笑郎 on 15/11/24.
//  Copyright © 2015年 Miami Heat. All rights reserved.
//

#import <Foundation/Foundation.h>
#pragma mark-exercise 6#
@interface Fraction:NSObject
-(void)setReal:(double)a;
-(void)setImaginary:(double)b;
-(void)print;
-(double)real;
-(double)imaginary;
@end

@implementation Fraction
{
    double real;
    double imaginary;
}

-(void)setReal:(double)a
{
    real=a;
}
-(void)setImaginary:(double)b
{
    imaginary=b;
}
-(void)print
{
    NSLog(@"a+bi=%.2f+%.2fi",real,imaginary);
    
}
-(double)real
{
    return real;
}
-(double)imaginary
{
    return imaginary;
}
@end


#pragma mark-exercise 7#
@interface Rectangle:NSObject
-(void)setWidth:(int)w;
-(void)setHeigh:(int)h;
-(int)width;
-(int)heigh;
-(int)area;
-(int)perimeter;
@end

@implementation Rectangle

{
    int width;
    int heigh;
}
-(void)setWidth:(int)w
{
    width=w;
}
-(void)setHeigh:(int)h
{
    heigh=h;
}
-(int)width
{
    return width;
}
-(int)heigh
{
    return heigh;
}
-(int)area
{
    return width*heigh;
}
-(int)perimeter
{
    return (width+heigh)*2;
}
@end




#pragma mark-exercise 8#
@interface Calculator:NSObject
-(void)setAccumulator:(double)value;
-(void)clear;
-(double)accumulator;

-(void)add:(double)value;
-(void)substract:(double)value;
-(void)multiply:(double)value;
-(void)divide:(double)value;
@end

@implementation Calculator

{
    double accumulator;
}
-(void)setAccumulator:(double)value
{
    accumulator=value;
}
-(void)clear
{
    accumulator=0;
}
-(double)accumulator
{
    return accumulator;
}

-(void)add:(double)value
{
    accumulator +=value;
}
-(void)substract:(double)value
{
    accumulator -=value;
}
-(void)multiply:(double)value
{
    accumulator *=value;
}
-(void)divide:(double)value
{
    accumulator /=value;
}

@end



#pragma mark-exercise 9#
@interface Calculator2:NSObject
-(void)setAccumulator:(double)value;
-(void)clear;
-(double)accumulator;

-(void)add:(double)value;
-(void)substract:(double)value;
-(void)multiply:(double)value;
-(void)divide:(double)value;
-(double)changeSign;
-(double)reciprocal;
-(double)xSquared;
@end

@implementation Calculator2

{
    double accumulator;
}
-(void)setAccumulator:(double)value
{
    accumulator=value;
}
-(void)clear
{
    accumulator=0;
}
-(double)accumulator
{
    return accumulator;
}

-(void)add:(double)value
{
    accumulator +=value;
}
-(void)substract:(double)value
{
    accumulator -=value;
}
-(void)multiply:(double)value
{
    accumulator *=value;
}
-(void)divide:(double)value
{
    accumulator /=value;
}
-(double)changeSign
{
    return -accumulator;
}
-(double)reciprocal
{
    return 1/accumulator;
}
-(double)xSquared
{
    return accumulator*accumulator;
}


@end


#pragma mark-excise 10#
@interface Calculator3:NSObject
-(void)setAccumulator:(double)value;
-(void)clear;
-(double)accumulator;

-(void)add:(double)value;
-(void)substract:(double)value;
-(void)multiply:(double)value;
-(void)divide:(double)value;
-(double)memoryClear;
-(double)memoryStore;
-(double)memoryRecall;
@end

@implementation Calculator3

{
    double accumulator;
}
-(void)setAccumulator:(double)value
{
    accumulator=value;
}
-(void)clear
{
    accumulator=0;
}
-(double)accumulator
{
    return accumulator;
}

-(void)add:(double)value
{
    accumulator +=value;
}
-(void)substract:(double)value
{
    accumulator -=value;
}
-(void)multiply:(double)value
{
    accumulator *=value;
}
-(void)divide:(double)value
{
    accumulator /=value;
}
-(double)memoryClear
{
    return accumulator=0;
}
-(double)memoryStore
{
    return accumulator;
}
-(double)memoryRecall
{
    return accumulator;
}


@end






int main(int argc, const char * argv[]) {
    @autoreleasepool {
#pragma mark-exercise 1#
        float a1=123.345;
        NSLog(@"%f",a1);
        
        int a2=0001;
        NSLog(@"%4i",a2);
        
        int a3=0Xab05;
        NSLog(@"%i",a3);
        
        int a4=123.5e2;
        NSLog(@"%i",a4);
        
        
        float a5=98.6F;
        NSLog(@"%.1f",a5);
        
        //0996; Invalid digit '9' in octal constant

        unsigned long int a7=1234uL;
        NSLog(@"%lu",a7);
        
        long double a8=1.123L;
        NSLog(@"%Lf",a8);
        
        
        //OXABCDEFL;Use of undeclared identifier 'OXABCDEFL'
        
        //0x10.5;// Hexadecimal floating constants require an exponent
        
        int a11=0xFFF;
        NSLog(@"%i",a11);
        
        
        int a12=0L;
        NSLog(@"%i",a12);
    
        float a13=.0001;
        NSLog(@"%f",a13);
        
        
        //98.7U  Invalid suffix 'U' on floating constant

        long double a15=-12E-12;
        NSLog(@"%Lf",a15);
        
        long int a16=197U;
        NSLog(@"%li",a16);
        
        int a17=0xabcu;
        NSLog(@"%i",a17);
        
        //0X0G1; Invalid suffix 'G1' on integer constant

        long int a19=123L;
        NSLog(@"%li",a19);
        
        
        float a20=-597.25;
        NSLog(@"%f",a20);
        
        
        int a21=+12;
        NSLog(@"%i",a21);
        
        
        //1777s;Invalid suffix 's' on integer constant
        
        //15,000; Expected ';' at end of declaration
        
        int a24=100U;
        NSLog(@"%i",a24);
        
        
        int a25=+123;
        NSLog(@"%i",a25);
        
        
        
        

#pragma mark-exercise 2#

        int F=27;
        float C;
        C=(F-32/1.8);
        NSLog(@"%f",C);
        
        
#pragma mark-exercise 3#
        char c,d;
        
        c='d';
        d=c;
        NSLog(@"d=%c",d);
        //d=d
#pragma mark-exercise 4#
        float x=2.55;
        double y;
        y=3*(x*x*x)-5*(x*x)+6;
        NSLog(@"y=%f",y);
        
        
#pragma mark-exercise 5#
        float y5;
        y5=(3.31e-8+2.01e-7)/(7.16e-6+2.01e-8);
        NSLog(@"y5=%f",y5);
        
#pragma mark-exercise 6#
        Fraction *WXLFrac=[[Fraction alloc] init];
        [WXLFrac setReal:2];
        [WXLFrac setImaginary:2];
        [WXLFrac print];
        NSLog(@"The Fraction is %.2f+%.2fi",[WXLFrac real],[WXLFrac imaginary]);
        

#pragma mark-exercise 7#
        Rectangle *weiRect=[[Rectangle alloc]init];
        [weiRect setWidth:12];
        [weiRect setHeigh:14];
        NSLog(@"weidth=%i,heigh=%i",[weiRect width],[weiRect heigh]);
        NSLog(@"The area of Rectangle is %i",[weiRect area]);
        NSLog(@"The perimeter of Rectangle is %i",[weiRect perimeter]);
        
        
#pragma mark-exercise 8#
        Calculator *WeiCal=[[Calculator alloc]init];
        [WeiCal setAccumulator:50];
        [WeiCal add:550];
        [WeiCal divide:30];
        [WeiCal substract:5];
        [WeiCal multiply:10];
        NSLog(@"The result is %g",[WeiCal accumulator]);



#pragma mark-exercise 9#
        Calculator2 *WeiCal2=[[Calculator2 alloc]init];
        [WeiCal2 setAccumulator:150];
        [WeiCal2 add:450];
        [WeiCal2 divide:20];
        [WeiCal2 substract:20];
        [WeiCal2 multiply:10];
        NSLog(@"The result2 is %g",[WeiCal2 accumulator]);
        NSLog(@"The result2 changsign is %g",[WeiCal2 changeSign]);
        NSLog(@"The result2 reciprocal is %g",[WeiCal2 reciprocal]);
        NSLog(@"The result2 xSquared is %g",[WeiCal2 xSquared]);
        
        
        
#pragma mark-exercise 10#
        Calculator3 *WeiCal3=[[Calculator3 alloc]init];
        [WeiCal2 setAccumulator:150];
        [WeiCal2 add:450];
        [WeiCal2 divide:20];
        [WeiCal2 substract:20];
        [WeiCal2 multiply:10];
        NSLog(@"The result3 is %g",[WeiCal3 accumulator]);
        NSLog(@"%g",[WeiCal3 memoryClear]);
        NSLog(@"%g",[WeiCal3 memoryStore]);
        NSLog(@"%g",[WeiCal3 memoryRecall]);

        

    
    
    }
    return 0;
}
