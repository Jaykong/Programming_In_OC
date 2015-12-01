//
//  main.m
//  chp9 Polymorphism
//
//  Created by Wenslow on 15/11/28.
//  Copyright © 2015年 Wenslow. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Complex.h"
#import "Fraction.h"
#import "Rectangle.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
#pragma mark exercise 1#
        Fraction *f1 = [[Fraction alloc]init];
        Fraction *f2 = [[Fraction alloc]init];
        Fraction *fracResult;
        Complex *c1 = [[Complex alloc]init];
        Complex *c2 = [[Complex alloc]init];
        Complex *compResult;
        
        [f1 setTo:1 over:10];
        [f2 setTo:2 over:15];
        
        [c1 setReal:18.0 andImaginary:2.5];
        [c2 setReal:-5.0 andImaginary:3.2];
        
        [c1 print];
        NSLog(@"   +");
        [c2 print];
        NSLog(@"---------");
        compResult = [c1 add111: c2];
#pragma mark exercise 1#
//        [compResult reduce];
        //compResult不能实现reduce方法
        [compResult print];
        NSLog(@"\n");
        
        [f1 print:YES];
        NSLog(@"   +");
        [f2 print:YES];
        NSLog(@"----------");
        fracResult = [f1 add111:f2];
        [fracResult print:YES];
        
#pragma mark exercise 2#
        id dateValue;
        dateValue = [[Rectangle alloc]init];
        @try {
            [dateValue setX:90 andY:100];
        }
        @catch (NSException *exception) {
            NSLog(@"Caught %@%@", [exception name], [exception reason]);
        }
        @finally {
            NSLog(@"Execution continue!");
        }
//合法，因为dateValue是一个id 对象，它可以保存任何类的对象
        
#pragma mark exercise 3#
        id dateValueaaa;
        XYPoint *myXYPoint = [[XYPoint alloc]init];
        myXYPoint.x = 50;
        myXYPoint.y = 100;
        dateValueaaa = myXYPoint;
        [dateValueaaa print];
        
#pragma mark exercise 4#
        id result, dateValue1, dateValue2;
        
        dateValue1 = f1;
        dateValue2 = f2;
        result = [dateValue1 add111:dateValue2];
        [result print:YES];
        
        dateValue1 = c1;
        dateValue2 = c2;
        result = [dateValue1 add111:dateValue2];
        [result print];
        
#pragma mark exercise 5#
        Fraction *fraction = [[Fraction alloc]init];
        Complex *complex = [[Complex alloc]init];
        id number = [[Complex alloc]init];
        
        if ([fraction isMemberOfClass:[Complex class]] == YES) {
            NSLog(@"fraction 是 Complex类的对象");
        }
        if ([complex isMemberOfClass:[NSObject class]] == YES) {
            NSLog(@"complex 是 NSObject类的对象");
        }
        if ([complex isKindOfClass:[NSObject class]] == YES) {
            NSLog(@"complex 是 NSObject类或其子类的对象");
        }
        if ([fraction isKindOfClass:[Fraction class]] == YES) {
            NSLog(@"fraction 是 Fraction类或其子类的对象");
        }
        if ([fraction respondsToSelector:@selector(print:)] == YES) {
            NSLog(@"fraction 能响应 print 方法");
        }
        if ([complex respondsToSelector:@selector(print)] == YES) {
            NSLog(@"complex 能响应print方法");
        }
        if ([Fraction instancesRespondToSelector:@selector(print)] == YES) {
            NSLog(@"Fraction 能响应print方法");
        }
        if ([number respondsToSelector:@selector(print)] == YES) {
            NSLog(@"number 能响应print方法");
        }
        if ([number isKindOfClass:[Complex class]] == YES) {
            NSLog(@"number 是Complex类或其子类的对象");
        }
        if ([[number class] respondsToSelector:@selector(alloc)] == YES) {
            NSLog(@"number class 能响应allco方法");
        }
    }
    return 0;
}
