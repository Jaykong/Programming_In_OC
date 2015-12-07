//
//  main.m
//  chap9Excise
//
//  Created by 笑郎 on 15/12/3.
//  Copyright © 2015年 Miami Heat. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Complex.h"
#import "Fraction.h"

#import "Rectangle.h"

#import "XYPoint.h"





int main(int argc, const char * argv[]) {
    @autoreleasepool {
#pragma mark-excise1#
        
        
//        Complex *c1 = [[Complex alloc]init];
//        Complex *c2 = [[Complex alloc]init];
//        
//        Complex *comResult;
//        
//        
//        
//        Fraction *f1 = [[Fraction alloc]init];
//        Fraction *f2 = [[Fraction alloc]init];
//        Fraction *fracResult;
//        
//        [f1 setTo:1 over:10];
//        [f2 setTo:2 over:15];
//        
//        [c1 setReal:18 andImaginary:2.5];
//        [c2 setReal:-5.0 andImaginary:3.2];
//        
//        [c1 print];
//        NSLog(@" + ");
//        [c2 print];
//        comResult = [c1 add:c2];
//
//        //[comResult reduce]; @interface for 'Complex' declares the selector 'reduce'
//        [comResult print];
//        NSLog(@" \n");
//        
//        
//        [f1 print];
//        NSLog(@" + ");
//        [f2 print];
//        fracResult = [f1 add:f2];
//        [fracResult print];
        
        
#pragma mark-excise2#
//        id dateValue;
//
//        dateValue = [[Rectangle alloc]init];
//        [dateValue setWidth:10 andHeigh:20];
//        NSLog(@"width = %i , heigh = %i",[dateValue width], [dateValue heigh]);
//        NSLog(@"area = %i,permiter = %i",[dateValue area],[dateValue perimeter]);
//        // 表达式合法，可以运行显示
        
        
#pragma mark-excise3#
//        id value;
//        XYPoint *myPoint = [[XYPoint alloc]init];
//        Fraction *f1 = [[Fraction alloc]init];
//        [f1 setTo:1 over:3];
//        [myPoint setX:10 andY:5];
//        
//        value = f1;
//        [value print];
//        
//        value = myPoint;
//        [myPoint print];
        
        
#pragma mark-excise4#
        
//        id dateValue1, dateValue2, result ;
//        Fraction *f1 = [[Fraction alloc]init];
//        Fraction *f2 = [[Fraction alloc]init];
//        
//        Complex *c1 = [[Complex alloc]init];
//        Complex *c2 = [[Complex alloc]init];
//        
//        [f1 setTo:1 over:5];
//        [f2 setTo:3 over:10];
//        
//        [c1 setReal:19 andImaginary:3.2];
//        [c2 setReal:-1 andImaginary:4.9];
//        
//        dateValue1 = f1;
//        dateValue2 = f2;
//        [dateValue1 print];
//        NSLog(@" + ");
//        [dateValue2 print];
//        NSLog(@"----------");
//        result = [dateValue1 fracAdd:dateValue2];
//
//        [result print];
//        
//        
//        dateValue1 = c1;
//        dateValue2 = c2;
//        [dateValue1 print];
//        NSLog(@" + ");
//        [dateValue2 print];
//        NSLog(@"-----------");
//        result = [dateValue1 comAdd:dateValue2];
//        [result print];
        
        
#pragma mark-excise5#
        Fraction *fraction = [[Fraction alloc]init];
        Complex *complex = [[Complex alloc]init];
        
        id number = [[Complex alloc]init];
        
        if ([fraction isMemberOfClass:[Complex class]] == YES) {
            NSLog(@"[fraction isMemberOfClass:[Complex class]");
        }
        
        if ([complex isMemberOfClass:[NSObject class]] == YES ) {
            NSLog(@"complex isMemberOfClass:[NSObject]");
        }
        
        if ([complex isKindOfClass:[NSObject class]] == YES)
        {
            NSLog(@"complex isKindOfClass:[NSObject class]");
        }
        
        if ([fraction isKindOfClass:[Fraction class]] == YES) {
            NSLog(@"fraction isKindOfClass:[Fraction class]");
        }
        
        if ([fraction respondsToSelector:@selector(print)] == YES ) {
            NSLog(@"fraction respondsToSelector:@selector(print)");
        }
        
        if ([complex respondsToSelector:@selector(print)] == YES) {
            NSLog(@"complex respondsToSelector:@selector(print)");
        }
        
        if ([Fraction instancesRespondToSelector:@selector(print)] == YES)
        {
            NSLog(@"Fraction instancesRespondToSelector:@selector(print)");
        }
        
        if ([number respondsToSelector:@selector(print)] == YES) {
            NSLog(@"number respondsToSelector:@selector(print)");
        }

        
        if ([number isKindOfClass:[Complex class]] == YES) {
            NSLog(@"[number isKindOfClass:[Complex class]");
        }
        
        if ([[number class] respondsToSelector:@selector(alloc)] == YES) {
            NSLog(@"[number class] respondsToSelector:@selector(alloc)");
        }
        
        
    }
    return 0;
}
