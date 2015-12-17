//
//  main.m
//  chap11
//
//  Created by 笑郎 on 15/12/17.
//  Copyright © 2015年 Miami Heat. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "Fraction.h"
//#import "Fraction+MathOps.h"
#import "Fraction+Comparison.h"
#import "NSCompairsonMethods.h"
#import "Calculator+Trig.h"
#import "Calculator.h"
#import "Rectangle.h"
#import "Square.h"





int main(int argc, char * argv[]) {
    @autoreleasepool {
#pragma mark-excise1#
//        Fraction *f1 = [[Fraction alloc]init];
//        [f1 setTo:1 over:3];
//        //[f1 print];
//        [f1 invert];
//
//        Fraction *result;
//        result = [f1 invert];
//        [result print];
        
        
#pragma mark-excise2#
//        Fraction *f1 = [[Fraction alloc]init];
//        Fraction *f2 = [[Fraction alloc]init];
//        [f1 setTo:1 over:3];
//        [f2 setTo:1 over:3];
//        
//        [f1 compare:f2];
//        NSLog(@" %i ", [f1 compare:f2]);
//        
//        [f1 isEqualTo:f2];
//        NSLog(@"%i",[f1 isEqualTo:f2]);
        
 
#pragma mark-excise3#
//此题在chap11excise3中,在这个project中与category冲突
        
#pragma mark-excese4#
        Calculator *cal = [[Calculator alloc]init];
        [cal setAccumulator:0 ];
        [cal cos];
        [cal sin];
#pragma mark-excise5#
        Square *mySqu ;
        mySqu = [[Square alloc]initWithSide:5];
        NSLog(@"side = %i, area = %i, perimeter = %i",[mySqu side],[mySqu area],[mySqu perimeter]);
        
        
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}

