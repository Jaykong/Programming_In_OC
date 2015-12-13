//
//  main.m
//  Chap7_exercise
//
//  Created by Yingbo Liu on 12/3/15.
//  Copyright © 2015 Yingbo Liu. All rights reserved.
//

#import <Foundation/Foundation.h>

//int main(int argc, const char * argv[]) {
//    @autoreleasepool {
//        // insert code here...
//        NSLog(@"Hello, World!");
//        
//    }
//    return 0;
//}
#pragma mark - exercise 1#
#import <Foundation/Foundation.h>
// Define the Fraction class
@interface Fraction : NSObject
@property int numerator, denominator;
-(void) print;
-(void) setTo: (int) n over: (int) d;
-(double) convertToNum;
-(void) add: (Fraction *) f;
-(Fraction *) subtract: (Fraction *) f;
-(Fraction *) multiply: (Fraction *) f;
-(Fraction *) divide: (Fraction *) f;
-(void) reduce;
@end



@implementation Fraction
@synthesize numerator, denominator;
-(void) print
{
    NSLog (@"%i/%i", numerator, denominator);
}
-(double) convertToNum
{
    if (denominator != 0)
        return (double) numerator / denominator;
    else
        return NAN;
}
-(void) setTo: (int) n over: (int) d
{
    numerator = n;
    denominator = d;
}
// add a Fraction to the receiver
-(void) add: (Fraction *) f

{
    // To add two fractions:
    // a/b + c/d = ((a*d) + (b*c)) / (b * d)
    numerator = numerator * f.denominator + denominator * f.numerator;
    denominator = denominator * f.denominator;
}


// Subtract argument from receiver
-(Fraction *) subtract: (Fraction *) f{
    Fraction *result = [[Fraction alloc]init];
    
    result.numerator = numerator * f.denominator - denominator*f.numerator;
    
    result.denominator = denominator * f.denominator;
    [result reduce];
    return result;
}
// Multiply receiver by argument
-(Fraction *) multiply: (Fraction *) f{
    
    Fraction *newFrac = [[Fraction alloc]init];
    
    newFrac.numerator = numerator * f.numerator;
    newFrac.denominator = denominator * f.denominator;

    [newFrac reduce];
    return newFrac;
}
// Divide receiver by argument
-(Fraction *) divide: (Fraction *) f{
    
    Fraction *anotherFrac = [[Fraction alloc]init];
    anotherFrac.numerator = numerator*f.denominator;
    anotherFrac.denominator = denominator *f.numerator;
    
    [anotherFrac reduce];
    return anotherFrac;
    
}
-(void) reduce
{
    int u = numerator;
    int v = denominator;
    int temp;
    while (v != 0) {
        temp = u % v;
        u = v;
        v = temp;
    }
    numerator /= u;
    denominator /= u;
}
@end



int main (int argc, char * argv[])
{
    @autoreleasepool {
        Fraction *aFraction = [[Fraction alloc] init];
        Fraction *bFraction = [[Fraction alloc] init];
            [aFraction setTo: 1 over: 4];      [bFraction setTo: 1 over: 2];         [aFraction print];
        NSLog (@"+");
        [bFraction print];
        NSLog (@"=");
        [aFraction add: bFraction];
               [aFraction reduce];
        [aFraction print];
    }
    return 0;
}
#pragma mark - exercise 2#
//modify the print method
@implementation Fraction


-(void) print


{
    Fraction *newFrac = [[Fraction alloc]init];
    
    if (newFrac.reduce == true){
        
        NSLog(@"The fraction cannot be reduced!");
    }else
    
    NSLog (@"%i/%i", numerator, denominator);
}

-(BOOL) reduce
{
    int u = numerator;
    int v = denominator;
    int temp;
    while (v != 0) {
        temp = u % v;
        u = v;
        v = temp;
    }
    numerator /= u;
    denominator /= u;
    
    if (numerator = u && denominator = v)
        return true;
    else
        return false;
}
@end


#pragma mark - exercise 3#

// The Fraction class works with negative numbers. I tested
//several values with negative signs before the values, the
//results are all correct.

#pragma mark - exercise 4#

//Modify the Fraction ’s print method to display fractions greater than 1 as mixed
//numbers. For example, the fraction 5/3 should be displayed as 1 2/3 .


-(void) print
{
    if (numerator > denominator){
        int wholeNumber = numerator/denominator;
        int reminder = numerator % denominator;
        
         NSLog (@"%i %i/%i", wholeNumber, reminder, denominator);
    }
    else
        NSLog (@"%i/%i", numerator, denominator);
}




#pragma mark - exercise 5#
//Remove the @synthesize directive from Program 7.2 and modify the program to handle
//the new names given to the instance variables by the compiler.

#import <Foundation/Foundation.h>
// Define the Fraction class
@interface Fraction : NSObject
@property int numerator, denominator;
-(void) print;
-(void) setTo: (int) n over: (int) d;
-(double) convertToNum;
@end


#import "Fraction.h"
@implementation Fraction

-(void) print
{
    NSLog (@"%i/%i", _numerator, _denominator);
}
-(double) convertToNum
{
    if (_denominator != 0)
        return (double) _numerator / _denominator;
    else
        return NAN;
}
-(void) setTo: (int) n over: (int) d
{
    _numerator = n;
    _denominator = d;
}
@end


#import "Fraction.h"
int main (int argc, char * argv[])
{
    @autoreleasepool {
        Fraction *aFraction = [[Fraction alloc] init];
        [aFraction setTo: 100 over: 200];
        [aFraction print];
        [aFraction setTo: 1 over: 3];
        [aFraction print];}
    return 0;
}



#pragma mark - exercise 6#\

-(Complex *) add: (Complex *) complexNum
{
    Complex *newComp = [Complext alloc] init];
    
    
    newComp.real = real + complexNum.real;
    newComp.imaginary = imaginary +complexNum.imaginary;
    
    return newComp;
    
}
#pragma mark - exercise 7#
int main (int argc, char *argv[]){
    
    @autoreleasepool {
        
        Complex *complex;
        Complex *newComplex = [[Complext alloc]init];
        
        Complex *newComplex1 = [[Complext alloc]init];
        newComplex.setReal = 3;
        newComplex.setImaginary = 5i;
        
        newComplex1.setReal = 4;
        newComplex1.setImaginary = 5i;
        
        [complex newcomplex add:newComplex1 ];
        [Complex pring];
    }
    
    
}



#pragma mark - exercise 8#

#pragma mark - exercise 9#

