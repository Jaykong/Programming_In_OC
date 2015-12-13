//
//  main.m
//  001
//
//  Created by lmz on 15/11/25.
//  Copyright (c) 2015年 lmz. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    @autoreleasepool {
#pragma mark - exercise 1#
        NSLog(@"Programming is fun!");
        
        NSLog(@"Programming is fun!");
        NSLog(@"Programming in OC is even more fun!");
        NSLog(@"Testing...\n..1\n..2\n...3");

        int sum1;
        sum1 = 50 + 25;
        NSLog(@"The sum of 50 and 25 is %i", sum1);
        
        int v1, v2, sum2;
        v1 = 50;
        v2 = 25;
        sum2 = v1 + v2;
        NSLog(@"The sum of %i and %i is %i", v1, v2, sum2);
        
#pragma mark - exercise 2#
        
        NSLog(@"In Objective-C, lowcase letter are significant.\nmain is where program execution begins.\nOpen and closed braces enclose program statments in a routine.\nAll program statemnt must be terminated by a semicolon.");
        
#pragma mark - exercise 3#
        int i;
        i = 1;
        NSLog(@"Testing...");
        NSLog(@"....%i", i);
        NSLog(@"...%i", i + 1);
        NSLog(@"..%i", i + 2);
        
#pragma mark - exercise 4#
        int a = 87;
        int b = 15;
        NSLog(@"a - b = %d", a - b);
        
#pragma mark - exercise 5#
        int sum3;
        sum3 = 25 + 37 - 19;
        NSLog(@"The answer is %d", sum3);
        
#pragma mark - exercise 6#
        int answer, result;
        answer = 100;
        result = answer - 10;
        NSLog(@"The result is %i\n", result + 5);
        
    }
    return 0;
}
