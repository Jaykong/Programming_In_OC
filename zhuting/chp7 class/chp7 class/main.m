//
//  main.m
//  chp7 class
//
//  Created by Wenslow on 15/11/26.
//  Copyright © 2015年 Wenslow. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fraction.h"
#import "Complex.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Fraction *aFraction = [[Fraction alloc]init];
        Fraction *bFraction = [[Fraction alloc]init];
        
#pragma mark - exercise 1#
        Fraction *resultFraction = [[Fraction alloc]init];
        
        [aFraction setTo:-3 over:4];
        [bFraction setTo:1 over:2];
        
        NSLog(@"加法");
        [aFraction print:YES];
        NSLog(@"+");
        [bFraction print:YES];
        NSLog(@"=");
        resultFraction = [aFraction add:bFraction];
        [resultFraction print:YES];
        
        NSLog(@"减法");
        [aFraction print:YES];
        NSLog(@"-");
        [bFraction print:YES];
        NSLog(@"=");
        resultFraction = [aFraction subtract:bFraction];
        [resultFraction print:YES];

        
        NSLog(@"乘法");
        [aFraction print:YES];
        NSLog(@"*");
        [bFraction print:YES];
        NSLog(@"=");
        resultFraction = [aFraction multiply:bFraction];
        [resultFraction print:YES];

        NSLog(@"除法");
        [aFraction print:YES];
        NSLog(@"/");
        [bFraction print:YES];
        NSLog(@"=");
        resultFraction = [aFraction divide:bFraction];
        [resultFraction print:YES];
        
#pragma mark - exercise 6#
        Complex *aCom = [[Complex alloc]init];
        Complex *bCom = [[Complex alloc]init];
        Complex *cCom = [[Complex alloc]init];
        
        aCom.real =5.3;
        aCom.imaginary = 7;
        bCom.real = 2.7;
        bCom.imaginary = 4;
        
        cCom = [aCom add:bCom];
        [cCom print];

    }
    return 0;
}
