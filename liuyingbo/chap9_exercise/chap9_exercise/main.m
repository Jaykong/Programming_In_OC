//
//  main.m
//  chap9_exercise
//
//  Created by Yingbo Liu on 12/3/15.
//  Copyright © 2015 Yingbo Liu. All rights reserved.
//#import <Foundation/Foundation.h>


#pragma mark - exercise 1#

// The program will not be able to run because in Complex class
//there is no such method that computes the GCD and reduces the
//fraction.

#pragma mark - exercise 2#

//dataValue = [[Rectangle alloc] init];
//This statement is valid because id can take the form of
//any objects. It is an dynamic datatype. It could have multiple
//instances of objects.

#pragma mark - exercise 3#

#import <Foundation/Foundation.h>
@interface XYPoint: NSObject

@property int x, y;
-(void) setX: (int) xVal andY: (int) yVal;
-(void) printXY;

@end



#import "XYPoint.h"
@implementation XYPoint
@synthesize x, y;
-(void) setX: (int) xVal andY: (int) yVal
{
    x = xVal;
    y = yVal;
}
//print method
-(void) printXY{
    
    
    NSLog(@"(%i, %i)", x, y);
}

@end




///////////////////////

#import "Fraction.h"
#import "Complex.h"


int main (int argc, char * argv[])
{
    @autoreleasepool {
        id dataValue;
        Fraction *f1 = [[Fraction alloc] init];
        Complex *c1 = [[Complex alloc] init];
        XYPoint *newXY = [[XYPoint alloc]init];
        
        id point;
        point = newXY;
        [point printXY];
        
        [newXY setX:2 andY:9];
        [f1 setTo: 2 over: 5];
        [c1 setReal: 10.0 andImaginary: 2.5];
        // first dataValue gets a fraction
        dataValue = f1;
        [dataValue print];
        // now dataValue gets a complex number
        dataValue = c1;
        [dataValue print];
    }
    return o;
}

#pragma mark - exercise 4#

//Fraction class add method

-(Fraction *) add: (Fraction *) f
{
    id fraction;
    Fraction *result = [[Fraction alloc] init];
    result.numerator = numerator * f.denominator +
    denominator * f.numerator;
    result.denominator = denominator * f.denominator;
    
    fraction = result;
    id result;
    result = (Fraction *)value1;
    result = (Fraction *)value2;
    
    result = [dataValue1 add: dataValue2];
    [result print];
    
}


//Complex class add method:
-(Complex *) add: (Complex *) f
{
    id complex;
    Complex *result = [[Complex alloc] init];
    result.real = real + f.real;
    result.imaginary = imaginary + f.imaginary;
    
    compelx = result;
    
    datavalue1= (compelx *) Compelx;
    datavalue2 = (compelx *) Complex;
    
    result = [dataValue1 add: dataValue2];
    [result print];

    
    
}



#pragma mark - exercise 5#
//Given//Fraction *fraction = [[Fraction alloc] init];
//Complex *complex = [[Complex alloc] init];
//id number = [[Complex alloc] init];
[fraction isMemberOfClass: [Complex class]];
// returns false

[complex isMemberOfClass: [NSObject class]];
//returns false

[complex isKindOfClass: [NSObject class]];
//returns true

[fraction isKindOfClass: [Fraction class]];
//returns true

[fraction respondsToSelector: @selector (print)];
//returns true

[complex respondsToSelector: @selector (print)];
//returns true

[Fraction instancesRespondToSelector: @selector (print)];
//returns true

[number respondsToSelector: @selector (print)];
//returns true

[number isKindOfClass: [Complex class]];
//returns true

[[number class] respondsToSelector: @selector (alloc)];
//returns true










int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
    }
    return 0;
}
