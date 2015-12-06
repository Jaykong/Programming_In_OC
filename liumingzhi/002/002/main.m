//
//  main.m
//  002
//
//  Created by lmz on 15/11/25.
//  Copyright (c) 2015年 lmz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "XYPoint.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
#pragma mark - exercise 1#
/*
不合法名称：
Int 系统保留名
6_05 只能以字母或下划线开头
A$ 名称中只可以由字母数字下划线组成
*/
#pragma mark - exercise 2#
/*
类：phone
对象：myiPhone
操作：text,photo,music,call,playgame
*/
        
#pragma mark - exercise 3#
/*
[myiPhone text]
[myiPhone photo]
[myiPhone music]
[myiPhone call]
[myiPhone playgame]
 */
        
#pragma mark - exercise 4#
/*
        myCar
        drive start turn clean
        
        myMotorcycle
        drive start turn clean
        
        myBoat
        drive start clean fishing
        
        有重叠
*/
        
#pragma mark - exercise 5#
/*
        同一类下的不同对象可以执行相同操作，实现编写一个操作在多处使用，方便快捷
*/
#pragma mark - exercise 6#
/*
     C语言情况下，每当引入一个新的操作都需要对编写好的代码根据需求进行修改，好处是可以根据不同的
     对象实现方法的精确设计，但是对于可以批量重复使用的方法来讲就多了很多不必要的编写过程
*/
        
#pragma mark - exercise 7#
        
        XYPoint *mP = [[XYPoint alloc] init];
        
        [mP setX:5 andY:10];
        
        NSLog(@"myPoint is (%d, %d)", mP.x, mP.y);
        
    }
    return 0;
}
