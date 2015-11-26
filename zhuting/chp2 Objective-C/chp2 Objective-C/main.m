//
//  main.m
//  chp2 Objective-C
//
//  Created by Wenslow on 15/11/23.
//  Copyright © 2015年 Wenslow. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
#pragma mark - exercise 1#
        //2-1
        NSLog(@"Programming is fun!");
        
        //2-2
        NSLog(@"Programming is fun!");
        NSLog(@"Programming in Objective-C is even more fun!");
        
        //2-3
        NSLog(@"Testing...\n..1\n..2\n...3");
        
        //2-4
        int sum;
        sum = 50 + 25;
        NSLog(@"The sum of 50 and 25 is %i", sum);
        
        //2-5
        int value1, value2, sum1;
        value1 = 50;
        value2 = 25;
        sum1 = value1 + value2;
        NSLog(@"The sum of %i and %i is %i", value1, value2, sum);
        
#pragma mark - exercise 2#
        NSLog(@"In Objective-C, lowcase letter are significant.\n"
              "main is where program execution begin.\n"
              "Open and closed braces enclose program statment in a routine.\n"
              "ALl program statemnt must be termininated by a semicolon.");
        
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
        int sum2;
        sum2 = 25 + 37 - 19;
        NSLog(@"The answer is %d", sum2);
        
#pragma mark - exercise 6#
        int answer, result;
        answer = 100;
        result = answer - 10;
        NSLog(@"The result is %d\n", result + 5);
    }
    return 0;
}
