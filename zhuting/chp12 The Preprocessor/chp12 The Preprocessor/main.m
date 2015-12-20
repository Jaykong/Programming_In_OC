//
//  main.m
//  chp12 The Preprocessor
//
//  Created by Wenslow on 15/12/3.
//  Copyright © 2015年 Wenslow. All rights reserved.
//

#import <Foundation/Foundation.h>

#define MIN2(x, y) ((x) < (y) ? (x) : (y))
#define MAX3(x, y, z) ((x) < (y) ? ((y) < (z) ? (z) : (y)) : ((x) < (z) ? (z) : (x)))
#define IS_UPPER_CASE(x) ((x >= 'A' && x <= 'Z') ? 1 : 0)
#define IS_LOWER_CASE(x) ((x >= 'a' && x <= 'z') ? 1 : 0)
#define IS_ALPHABETIC(x) ((IS_UPPER_CASE(x) || IS_LOWER_CASE(x)) ? 1 : 0)
#define IS_DIGIT(x) ((x >= '0' && x <= '9') ? 1 : 0)
#define IS_SPECIAL(x) ((IS_DIGIT(x) || IS_ALPHABETIC(x)) ? 0 : 1)
#define ABSOLUTE_VALUE(x) ((x) < 0 ? -(x) : (x))
int main(int argc, const char * argv[]) {
    @autoreleasepool {
#pragma mark - exercise 2#
        NSLog(@"%d is the MIN value", MIN(2, 3));

#pragma mark - exercise 3#
        NSLog(@"%d is  the MAX value", MAX3(4, 3, 1));
        
#pragma mark - exercise 4#
        NSLog(@"#pragma mark - exercise 4#");
        NSLog(@"%d", IS_UPPER_CASE('D'));
        NSLog(@"%d", IS_UPPER_CASE('2'));
        
#pragma mark - exercise 5#
        NSLog(@"#pragma mark - exercise 5#");
        NSLog(@"%d", IS_ALPHABETIC('s'));
        NSLog(@"%d", IS_ALPHABETIC('H'));
        NSLog(@"%d", IS_ALPHABETIC('3'));
        
#pragma mark - exercise 6#
        NSLog(@"#pragma mark - exercise 6#");
        NSLog(@"%d", IS_SPECIAL('$'));
        NSLog(@"%d", IS_SPECIAL('2'));
        
#pragma mark - exercise 7#
        NSLog(@"#pragma mark - exercise 7#");
        NSLog(@"%d", ABSOLUTE_VALUE(-5 - 99));
    }
    return 0;
}
