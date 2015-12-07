//
//  main.m
//  chap10excise
//
//  Created by 笑郎 on 15/12/3.
//  Copyright © 2015年 Miami Heat. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Rectangle.h"
#import "Square.h"
#import "Fraction.h"
#import "Day.h"




int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
#pragma mark-excise1#
        
        Rectangle *a;
        a=[[Rectangle alloc]initWithWidth:10 andHeigh:15];
        [a print];
        
        
#pragma mark-excise2#
        Square *b;
        b = [[Square alloc]initWithSide:5];
        NSLog(@"%i",[b side]);
        
        
#pragma mark-excise3#
//        
//        Fraction *f1 , *f2;
//        f1 = [[Fraction alloc]initWith:1 over:20];
//        f2 = [[Fraction alloc]initWith:1 over:25];
//        
//        for (int i = 0; i < 10; ++i ) {
//            [f1 add:f2];
//        }
//        extern int gCount;
//        NSLog(@"The fraction run %i times",gCount);

#pragma mark-excise4#
//        Day *myDay;
//        myDay = [[Day alloc]init];
//        [myDay findDays:Monday];
        
#pragma mark-excise5#
//        typedef Fraction * FractionObj;
//        FractionObj f1 = [[Fraction alloc]init];
//        FractionObj f2 = [[Fraction alloc]init];
        

#pragma mark-excise6#
        float f = 1.00;
        short int i = 100;
        long int l =500L;
        double d = 15.00;
        
        
        NSLog(@"f + i = %f", f + i);
        NSLog(@"l / d = %f", l / d);
        NSLog(@"i / l + f =%f", i / l +f);
        NSLog(@"l * i = %li",l * i);
        NSLog(@"f / 2 =%f", f / 2);
        NSLog(@"i / (d + l) = %f ", i / (d + l) );
        NSLog(@"l / (i * 2.0) = %f", l / (i + 2.0));
        NSLog(@"l + i / (double)l = %f",l + i / (double)l);
      
        
        
    }
    return 0;
}
