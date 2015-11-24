//
//  main.m
//  chp3 class
//
//  Created by Wenslow on 15/11/23.
//  Copyright © 2015年 Wenslow. All rights reserved.
//

#import <Foundation/Foundation.h>

#pragma mark - exercise 7-1#
//---------- @interface 部分 -------------
@interface XYpoint:NSObject

- (void) setXPoint: (int) n;
- (void) setYPoint: (int) m;
- (int) xPoint;
- (int) yPoint;

@end
//---------- @implementation 部分 -------------
@implementation XYpoint
{
    int xPoint;
    int yPoint;
}

- (void) setXPoint: (int) n;
{
    xPoint = n;
}

- (void)setYPoint: (int)m
{
    yPoint = m;
}

- (int)xPoint
{
    return xPoint;
}

- (int)yPoint
{
    return yPoint;
}

@end


int main(int argc, const char * argv[]) {
    @autoreleasepool {

#pragma mark - exercise 1#
        //Int 是保留保留名
        //6_05 名称必须以字母或下划线开头
        //A$ 名称中不能出现除字母、下划线和数字以外的字符
        
#pragma mark - exercise 2#
        //类 Computer
        //对象 myMac
        //操作 music video game internet word
        
#pragma mark - exercise 3#
        //[myMac music]
        //[myMac video]
        //[myMac game]
        //[myMac internet]
        //[myMac word]
        
#pragma mark - exercise 4#
        //myBoat
        //wash drive float
        
        //myMotorcycle
        //wash drive accelerate decelerate refule
        
        //myCar
        //wash drive accelerate decelerate refule
        
        //有重叠的操作
        
#pragma mark - exercise 5#
        //如果汽车、摩托车或者船是同一类的不同对象，他们都能执行以上的三个操作，无需重读编写
        //如果汽车、摩托车或者船是不同类的不同对象，可以通过类的继承来让这它们都能实现以上三个操作
      
#pragma mark - exercise 6#
        //如果用C语言编写程序，每添加一种新的交通工具对象，清洗的方法都要重新编写
        //对于面向对象编程，只要新添加的交通工具是同一个类的对象，或者是继承自该类的类的对象，就能直接使用“清洗”方法
        
#pragma mark - exercise 7-2#
    
//-------- program 部分 ---------------
        XYpoint *aaaa = [[XYpoint alloc]init];
        
        aaaa.xPoint = 5;
        aaaa.yPoint = 10;
        
        NSLog(@"The coordinate of aaaa is (%d, %d)", aaaa.xPoint, aaaa.yPoint);
        
    }
    return 0;
}
 