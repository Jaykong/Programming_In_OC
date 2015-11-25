//
//  main.m
//  chp4 dataType
//
//  Created by Wenslow on 15/11/23.
//  Copyright © 2015年 Wenslow. All rights reserved.
//

#import <Foundation/Foundation.h>

#pragma mark - exercise 6-1#
@interface Complex : NSObject

- (void)setReal: (double)a;
- (void)setImaginary: (double)b;
- (void)print;
- (double)real;
- (double)imaginary;

@end

@implementation Complex
{
    double real, imaginary;
}

- (void)setReal: (double)a
{
    real = a;
}

- (void)setImaginary: (double)b
{
    imaginary = b;
}

- (double)real
{
    return real;
}

- (double)imaginary
{
    return imaginary;
}

- (void)print
{
    NSLog(@"The result is %.1f + %.1fi", real, imaginary);
}

@end

#pragma mark - exercise 7-1#
@interface Rectangle: NSObject
- (void)setWidth: (int)w;
- (void)setHeight: (int)h;
- (int)width;
- (int)height;
- (int)area;
- (int)perimeter;
@end

@implementation Rectangle
{
    int width, height;
}

- (void)setWidth: (int)w
{
    width = w;
}

- (void)setHeight: (int)h
{
    height = h;
}

- (int)width
{
    return width;
}

- (int)height
{
    return height;
}

- (int)area
{
    return width * height;
}

- (int)perimeter
{
    return (width + height) * 2;
}
@end

#pragma mark - exercise 8-1 9-1 10-1#
@interface Calculator: NSObject
- (void)setAccumulator: (double)value;
- (void)clear;
- (double)accumulator;
- (double)add: (double)value;//加
- (double)subtract: (double)value;//减
- (double)multiply: (double)value;//乘
- (double)divide: (double)value;//除
- (double)changeSign;//改变正负号
- (double)reciprocal;//倒数
- (double)xSquared;//平方
- (double)memoryClear;//清理内存
- (double)memoryStore;//将内存的值设置为累加器的值
- (double)memoryRecall;//将累加器的值设置为内存的值
- (double)memoryAdd: (double)value;//添加值到内存中
- (double)memorySubtract: (double)value;//对内存的值进行减法计算
- (void)setMemory: (double)value;
- (double)memory;
@end

@implementation Calculator
{
    double accumulator;//累加器
    double memory;//内存
}

- (void)setAccumulator:(double)value
{
    accumulator = value;
}

- (void)clear
{
    accumulator = 0;
}

- (double)accumulator
{
    return accumulator;
}

- (double)add: (double)value
{
    accumulator += value;
    NSLog(@"After added, the result is %f", accumulator);
    return accumulator;
}

- (double)subtract: (double)value
{
    accumulator -= value;
    NSLog(@"After subtracted, the result is %f", accumulator);
    return accumulator;
}

- (double)multiply: (double)value
{
    accumulator *= value;
    NSLog(@"After multiplied, the result is %f", accumulator);
    return accumulator;
}

- (double)divide: (double)value
{
    accumulator /= value;
    NSLog(@"After divided, the result is %f", accumulator);
    return accumulator;
}

- (double)changeSign
{
    accumulator = -accumulator;
    return accumulator;
}

- (double)reciprocal
{
    accumulator = 1 / accumulator;
    return accumulator;
}

- (double)xSquared
{
    accumulator = accumulator * accumulator;
    return accumulator;
}

- (void)setMemory:(double)value
{
    memory = value;
}

- (double)memory
{
    return memory;
}

- (double)memoryClear//清理内存
{
    memory = 0;
    return memory;
}

- (double)memoryStore//将内存的值设置为累加器的值
{
    memory = accumulator;
    return memory;
}

- (double)memoryRecall//将累加器的值设置为内存的值
{
    accumulator = memory;
    return memory;
}

- (double)memoryAdd: (double)value//添加值到内存中
{
    memory += value;
    return memory;
}

- (double)memorySubtract: (double)value//对内存的值进行减法计算
{
    memory -= value;
    return memory;
}

@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        
#pragma mark - exercise 1#
        //0x10.5; Hexadecimal floating constants require an exponent
        //0X0G1; Invalid suffix 'G1' on integer constant
        //98.7U;Invalid suffix 'U' on floating constant
        //17777s;Invalid suffix 's' on integer constant
        //0996;Invalid digit '9' in octal constant
        //1.2Fe-7;Invalid suffix 'Fe-7' on floating constant
        //15,000;数字中不能加‘,’号
   
#pragma mark - exercise 2#
        int C, F = 27;
        C = (F - 32) / 1.8;
        NSLog(@"27℉ is %d℃", C );
        
#pragma mark - exercise 3#
        char c, d;
        c = 'd';
        d = c;
        NSLog(@"d = %c", d);
        
#pragma mark - exercise 4#
        float a = 2.55;
        NSLog(@"3aaa - 5aa + 6 = %f", (3 * a * a * a - 5 * a * a + 6));
        
#pragma mark - exercise 5#
        NSLog(@"The result is %e", (3.31e-8 + 2.01e-7) / (7.16e-6 + 2.01e-8));
        
#pragma mark - exercise 6-2#
        Complex *plx = [[Complex alloc]init];
        plx.real = 2.2;
        plx.imaginary = 3.3;
        [plx print];
 
#pragma mark - exercise 7-2#
        Rectangle *rec = [[Rectangle alloc]init];
        rec.height = 10;
        rec.width = 5;
        NSLog(@"The area is %d, perimeter is %d", [rec area], [rec perimeter]);
        
#pragma mark - exercise 8-2#     
        Calculator *deskCalc = [[Calculator alloc]init];
        [deskCalc add:200.0];
        [deskCalc divide:15.0];
        [deskCalc subtract:10.0];
        [deskCalc multiply:5];
        NSLog(@"The result is %g", deskCalc.accumulator);
        
#pragma mark - exercise 9-2#
        NSLog(@"After changeSign, the result is %f", [deskCalc changeSign]);//改变正负号
        NSLog(@"After reciprocal, the result is %f", [deskCalc reciprocal]);//倒数
        NSLog(@"After xSquared, the result is %f", [deskCalc xSquared]);//平方
        
#pragma mark - exercise 10-2#
        deskCalc.accumulator = 100;//为累加器设置一个新的值
        
        [deskCalc memoryStore];//将内存的值设置为累加器的值
        NSLog(@"After stored, the value of memory is %f", deskCalc.memory);
        
        [deskCalc memoryAdd:50];//对内存的值进行加法计算
        NSLog(@"After added, the value of memory is %f", deskCalc.memory);
        
        [deskCalc memorySubtract:10];//对内存的值进行减法计算
        NSLog(@"After subtracted, the value of memory is %f", deskCalc.memory);
        
        [deskCalc memoryRecall];//将累加器的值设置为内存的值
        NSLog(@"Now the value of accumulator is %f", deskCalc.accumulator);
        
        [deskCalc memoryClear];//将内存的值设置为0
        NSLog(@"Now the value of memory is %f", deskCalc.memory);
        
    }
    return 0;
}
