//
//  main.m
//  chap3
//
//  Created by 笑郎 on 15/11/24.
//  Copyright © 2015年 Miami Heat. All rights reserved.
//

#import <Foundation/Foundation.h>





#pragma mark-exercise 3#
@interface Person:NSObject

-(void)eat;
-(void)play;
-(void)sleep;
-(void)work;
-(void)learn;

@end

@implementation Person

-(void)eat
{
    NSLog(@"eat...");
}
-(void)play
{
    NSLog(@"play...");
}
-(void)sleep
{
    NSLog(@"sleep...");
}
-(void)work
{
    NSLog(@"work...");
}
-(void)learn
{
    NSLog(@"learn...");
}
@end



#pragma mark-exercise 5#
@interface Vehicle:NSObject
-(void)prep;
-(void)geGas;
-(void)service;


@end

@implementation Vehicle

-(void)prep
{
    NSLog(@"prep...");
}
-(void)geGas
{
    NSLog(@"getGas...");
}
-(void)service
{
    NSLog(@"service...");
}

@end


#pragma mark-exercise 6#
@interface XYPoint:NSObject
-(void)print;
-(void)setXPoint:(int)x;
-(void)setYPoint:(int)y;
-(int)XPoint;
-(int)YPoint;
@end

@implementation XYPoint
{
    int XPoint;
    int YPoint;
}
-(void)print
{
    NSLog(@"%i,%i",XPoint,YPoint);
}
-(void)setXPoint:(int)x
{
    XPoint=x;
}
-(void)setYPoint:(int)y
{
    YPoint=y;
}
-(int)XPoint
{
    return XPoint;
}
-(int)YPoint
{
    return YPoint;
}
@end


int main(int argc, const char * argv[]) {
    @autoreleasepool {
#pragma mark-exercise 1#
        int Int;
        Int=1;
        NSLog(@"%i",Int);
        
        int _calloc;
        _calloc=2;
        NSLog(@"%i",_calloc);
        
        int clearScreen;
        clearScreen=3;
        NSLog(@"%i",clearScreen);
        
        int ReInitialize;
        ReInitialize=4;
        NSLog(@"%i",ReInitialize);
        
        int Xx;
        Xx=5;
        NSLog(@"%i",Xx);
        
        int _1312;
        _1312=6;
        NSLog(@"%i",_1312);

        int _;
        _=7;
        NSLog(@"%i",_);
        
        // 6_05; Expected identifier or '('
        
        int alphaBetaRoutine;
        alphaBetaRoutine=8;
        NSLog(@"%i",alphaBetaRoutine);

        int z;
        z=9;
        NSLog(@"%i",z);
        
        int A$=10;
        
        NSLog(@"%i",A$);
        


        
        
        
 
#pragma mark-exercise 2#

//        [Weixiaolang eat];
//        [Weixiaolang play];
//        [Weixiaolang sleep];
//        [Weixiaolang work];
//        [Weixiaolang learn];

        
        
#pragma mark-exercise 3#

        Person *Weixiaolang=[[Person alloc]init];
        [Weixiaolang eat];
        [Weixiaolang play];
        [Weixiaolang sleep];
        [Weixiaolang work];
        [Weixiaolang learn];
        
#pragma mark-exercise 4#
//        [ship run];
//        [moto getGas];
//        [car stop];
        
#pragma mark-exercise 5#
        Vehicle *myVehicle=[Vehicle new];
        [myVehicle prep];
        [myVehicle geGas];
        [myVehicle service];
        
        
        Vehicle *ship=[[Vehicle alloc] init];
        [ship prep];
        
        Vehicle *moto=[[Vehicle alloc] init];
        [moto geGas];
        
        Vehicle *car=[[Vehicle alloc] init];
        [car service];
        
        
#pragma mark-exercise 6#
//        添加新的交通工具使用过程方法和使用面向对象的方法相比
//        好处：节省了工作量，提高了效率，可以反复使用
//        缺点：需要一个写好的@interface和@implementation，如果声明和定义错了，后面就添加新工具的初始化就无法进行

#pragma mark-exercise 6#

        XYPoint *WeiXYPoint=[[XYPoint alloc] init];
        [WeiXYPoint setXPoint:1];
        [WeiXYPoint setYPoint:2];
        NSLog(@"XYPoint is (%i,%i)",[WeiXYPoint XPoint],[WeiXYPoint YPoint]);

    
    
    }
    return 0;
}
