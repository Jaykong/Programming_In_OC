//
//  main.m
//  chap8excise
//
//  Created by 笑郎 on 15/12/1.
//  Copyright © 2015年 Miami Heat. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ClassC.h"
#import "ClassB.h"
#import "ClassA.h"

#import "XYPoint.h"
#import "Rectangle.h"

#import "ClassB2.h"

#import "GraphicObject.h"
#import "Circle.h"
#import "Triangle.h"
#import "RectangleA.h"








int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
#pragma mark-excise1#
//        ClassC *c = [[ClassC alloc]init];
//        [c initVar];
//        [c print];
//        
//        ClassB *b = [[ClassB alloc]init];
//        [b initVar];
//        [b print];
//        
//        ClassA *a = [[ClassA alloc]init];
//        [a initVar];
//        [a print];
        
        
#pragma mark-excise2#
//        Rectangle *myRect = [[Rectangle alloc]init];
//        XYPoint *myXYPoint = [[XYPoint alloc]init];
//        
//        [myRect setWidth:5 andHeigh:8];
//        [myXYPoint setX:100 andY:200];
//        
//        myRect.origin = myXYPoint;
//        
//        NSLog(@"Rectangle width = %g and heigh = %f",myRect.width , myRect.heigh);
//        
//        NSLog(@"Origin = (%g , %f)",myRect.origin.x ,myRect.origin.y);
//        
//        NSLog(@"Area = %g , Perimeter = %f",myRect.area , [myRect perimeter]);
//        
//        
//        [myXYPoint setX:50 andY:100];
//        NSLog(@"Origin2 = (%g , %f)",myRect.origin.x ,myRect.origin.y);
//        [myRect print];
        
        
        
#pragma mark-excise3#
        
        //ClaaB ClassB2都是ClassA的子类，相互之间属于平行的类，都是NSObject的孙类
        //父类： NSObject -> ClassA -> ClassB ->ClassC
        //      NSObject -> ClassA -> ClassB2
        //ClassB ClassB2的超类都是NSObject
        //一个类可以有无数个子类，只能有一个超类；
        
        
        
        ClassB2 *b2 = [[ClassB2 alloc]init];
        [b2 initVar];
        [b2 print];
        
        
#pragma mark-excise4#
 /*
        Rectangle *myRect1 = [[Rectangle alloc]init];
        XYPoint *myXYPoint1 = [[XYPoint alloc]init];
        
        [myXYPoint1 setX:100 andY:200];
        
        myRect1.origin = myXYPoint1;
        
        Rectangle *myRect2 = [[Rectangle alloc]init];
        XYPoint *myXYPoint2 = [[XYPoint alloc]init];
        
        [myXYPoint2 setX:50 andY:50];
        
        myRect2.origin = myXYPoint2;
        
        
        [myRect1 print];
        NSLog(@"move add");
        [myRect2 print];
  
        [myRect1 translate:myRect2];
        [myRect1 print];

  
  
//        Rectangle *resultRectangle;
//        resultRectangle = [myRect1 translate:myRect2];
//        [resultRectangle print];
*/
        
#pragma mark-excise5#
        Circle *cir1 = [[Circle alloc]init];
        [cir1 setCircleside:5 andPa:3.1415926];
        NSLog(@"circileside = %g, area = %g, perimeter = %g",cir1.circleside , cir1.area , cir1.perimeter);
        
        Triangle *sanjiao = [[Triangle alloc]init];
        //[sanjiao setSide1:3 andSide2:4];
        sanjiao.side1 = 3;
        sanjiao.side2 = 4;
        NSLog(@"area = %g",[sanjiao area]);
        
        
#pragma mark-excise6#
        Rectangle *myRect = [[Rectangle alloc] init];
        XYPoint *myPoint = [[XYPoint alloc] init];
        XYPoint *test = [[XYPoint alloc] init];
        

        [myRect setWidth:10 andHeigh:10];
        [myPoint setX:100 andY:100];
        
        [test setX:0 andY:0];
        
        if ([myRect containsPoint:test])
            NSLog(@"contain");
        else
            NSLog(@"not contain");
        
#pragma mark-excise7#
        

        

        

        
    }
        return 0;
}
