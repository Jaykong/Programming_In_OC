//
//  main.m
//  chp8 inherit
//
//  Created by Wenslow on 15/11/26.
//  Copyright © 2015年 Wenslow. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ClassC.h"
#import "Rectangle.h"
#import "XYPoint.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
#pragma mark - exercise 1#
        ClassA *A = [[ClassA alloc]init];
        ClassB *B = [[ClassB alloc]init];
        ClassC *C = [[ClassC alloc]init];
        
        [A initVar];
        [B initVar];
        [C initVar];
        
        [A printVar];
        [B printVar];
        [C printVar];
        
#pragma mark - exercise 2#
        Rectangle *myRect = [[Rectangle alloc]init];
        XYPoint *myPoint = [[XYPoint alloc]init];
        
        [myPoint setX:100 andY:200];
        
        [myRect setWidth:5 andHeight:8];
        myRect.origin = myPoint;
        
        NSLog(@"Rectangle w = %lf, h = %lf", myRect.width, myRect.height);
        NSLog(@"Origin at (%lf, %lf)", myRect.origin.x, myRect.origin.y);
        NSLog(@"Area = %lf, Perimeter = %lf", [myRect area], [myRect perimeter]);
        
#pragma mark - exercise 3#
        //ClassB 和ClassB2 都是ClassA的子类
        //NSObject 是ClassA、ClassB和ClassB2的父类
        //ClassB和ClassB2的超类都是NSObject。一个类只能有一个超类，但子类的数目没有限制
        
#pragma mark - exercise 4#
        XYPoint *myPoint2 = [[XYPoint alloc]init];
        myPoint2.x = 300;
        myPoint2.y = 600;
        [myRect translate:myPoint2];
        NSLog(@"New rigin at (%lf, %lf)", myRect.origin.x, myRect.origin.y);
        
#pragma mark - exercise 8#
        [myRect draw];
        
        }
    return 0;
}
