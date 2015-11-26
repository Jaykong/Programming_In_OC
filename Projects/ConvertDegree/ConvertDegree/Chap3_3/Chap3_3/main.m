//
//  main.m
//  Chap3_3
//
//  Created by kongyunpeng on 11/21/15.
//  Copyright © 2015 kongyunpeng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Complex.h"
#import "Rectangle.h"
#import "Calculator.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        char c,d;
        c = 'd';
        d = c;
        NSLog(@"d = %c",d);
        
#pragma mark chap3_4
        
        float result;
        result = 3 * 2.55 * 2.55 * 2.55
        - 5 * 2.55 * 2.55 + 6;
        NSLog(@"result is: %.2f",result);
        
#pragma mark chap3_5
       NSLog(@"result with exponential is:%e",( 3.31e-8 + 2.0e-7)/(7.16e-6 + 2.01e-8)) ;
        
        
#pragma mark chap3_6
        Complex *complex1 = [[Complex alloc] init];
        [complex1 setReal:3.3];
        [complex1 setImaginary:5.52];
        [complex1 print];
#pragma mark chap3_7
        
        Rectangle *rectangle = [[Rectangle alloc] init];
        [rectangle setWidth:10];
        [rectangle setHeight:9];
        NSLog(@"area is :%i",[rectangle area]);
        NSLog(@"perimeter is :%i", [rectangle perimeter]);
#pragma mark chap3_8
        Calculator *calculator = [[Calculator alloc] init];
        [calculator setAccumulator:5];
        NSLog(@"add to accumlator:%g",[calculator add:3]);
        NSLog(@"subtract to accumlator:%g",[calculator subtract:4]);
        
        NSLog(@"multiply to accumlator:%g",[calculator multiply:2]);
        
        NSLog(@"divide to accumlator:%g",[calculator divide:2]);
        
 #pragma mark chap3_9
        NSLog(@"change Sign of accumulator:%g",[calculator changeSign]);/// No visible @interface for 'Calculator' declares the selector 'changeSign'
        
        NSLog(@"reciprocal:%g",[calculator reciprocal]);
        NSLog(@"xSquared:%g",[calculator xSquared]);
      
 #pragma mark chap3_10
        
    NSLog(@"calculator memoryStore:%g",[calculator memoryStore])  ;
    NSLog(@"calculator add 5:%g",[calculator memoryAdd:5])  ;
    NSLog(@"calculator subtract 10:%g",[calculator memorySubtract:10])  ;
    NSLog(@"calculator clear:%g",[calculator memoryClear]) ;
    }
    return 0;
}
