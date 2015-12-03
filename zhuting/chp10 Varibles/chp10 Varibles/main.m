//
//  main.m
//  chp10 Varibles
//
//  Created by Wenslow on 15/12/1.
//  Copyright © 2015年 Wenslow. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Rectangle.h"
#import "Square.h"
#import "Fraction.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
//#pragma mark - exercise 1#
//        Rectangle *rec1 = [[Rectangle alloc]initWithWidth:5 andHeight:6];
//        NSLog(@"width = %f, height = %f", rec1.width, rec1.height);
//        
//#pragma mark - exercise 2#
//        Square *squ1 = [[Square alloc]initWithSide:3];
//        NSLog(@"Side = %f", squ1.width);
//        
//#pragma mark - exercise 3#
//        Fraction *fra1 = [[Fraction alloc]init];
//        Fraction *fra2 = [[Fraction alloc]init];
//        
//        [fra1 setTo:5 over:6];
//        [fra2 setTo:1 over:2];
//        [fra1 add111:fra2];
//        NSLog(@"The add method has been used for %d time", [Fraction addCount]);
//        
//        [fra1 add111:fra2];
//        NSLog(@"The add method has been used for %d times", [Fraction addCount]);
//        
//        [fra1 add111:fra2];
//        NSLog(@"The add method has been used for %d times", [Fraction addCount]);

#pragma mark - exercise 4#
        typedef enum {Sunday, Monday, Tuesday, Wednesday, Thurday, Friday, Saturday} Day;
        
#pragma mark - exercise 5#
        typedef Fraction *FractionObj;
        FractionObj f1 = [[Fraction alloc]init];
        FractionObj f2 = [[Fraction alloc]init];
        
#pragma mark - exercise 6#
        float f = 1.00;
        short int i = 100;
        long int l = 500L;
        double d = 15.00;
        
        NSLog(@"f + i = %f\n"
            "l / d = %lf\n"
              "i / l + f = %f\n"
              "l * i = %ld\n"
              "f / 2 = %f\n"
              "i / (d + f) = %lf\n"
              "l / (i * 2.0) = %f\n"
              "l + i / (double) l = %lf", f + i, l / d, i / l + f, l * i, f / 2, i / (d + f), l / (i * 2.0), l + i / (double) l);
    }
    return 0;
}
