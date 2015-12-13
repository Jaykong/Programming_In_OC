//
//  main.m
//  Chp4
//
//  Created by lmz on 15/12/6.
//  Copyright © 2015年 lmz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Complex.h"
#import "Rectangle.h"
#import "Calculator.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
#pragma mark - exercise 1#
/*
0XABCDEFL
0996
98.7U
-12E-12
1.2Fe-7
0X0G1
15,000
*/
        
#pragma mark - exercise 2#

        int F=27;
        float C;
        C = (F-32)/1.8;
        NSLog(@"C = %f ",C);
        
#pragma mark - exercise 3#
        char c,d;
        c = 'd';
        d = c;
        NSLog(@"d = %c ",d);
#pragma mark - exercise 4#
        float x=2.55,y;
        y=x*x*x*3 - x*x*5 + 6;
        NSLog(@"y is %f",y);
#pragma mark - exercise 5#
        float y2;
        y2 = (3.31*10e-2 + 2.01*10e-7)/(7.16*10e-6 + 2.01*10e-8);
        NSLog(@"y2 is %f",y2);
#pragma mark - exercise 6#
        Complex *myNum = [[Complex alloc] init];
        [myNum setReal:13.2 andImaginary:7.0];
        [myNum print];
#pragma mark - exercise 7#
        Rectangle *myR = [[Rectangle alloc] init];
        [myR setW:3 andH:8];
        NSLog(@"Area = %d ,Perimeter = %d",myR.area,myR.perimeter);
#pragma mark - exercise 8#
        Calculator *deskCalc = [[Calculator alloc] init];
        [deskCalc setAccumulator:100];
        [deskCalc add:300.0];
        [deskCalc divide:10.0];
        [deskCalc subtract:20.0];
        [deskCalc multiply:8];
        NSLog(@"the final result is %lf", deskCalc.accumulator);
#pragma mark - exercise 9#
        NSLog(@"the result of changesign is %f", [deskCalc changeSign]);
        NSLog(@" the result of riciprocalis %f", [deskCalc reciprocal]);
        NSLog(@"the result of xSquared is %f", [deskCalc xSquared]);
        
#pragma mark - exercise 10#
        deskCalc.accumulator = 200;
        
        [deskCalc memoryStore];
        NSLog(@"the result of store is %f", deskCalc.memory);
        
        [deskCalc memoryAdd:50];
        NSLog(@"the result of add is %f", deskCalc.memory);
        
        [deskCalc memorySubtract:10];
        NSLog(@"the result of subtract is %f", deskCalc.memory);
        
        [deskCalc memoryRecall];
        NSLog(@"the accumulator is %f", deskCalc.accumulator);
        
        [deskCalc memoryClear];
        NSLog(@"the memory is %f", deskCalc.memory);
        
    }
    return 0;
}
