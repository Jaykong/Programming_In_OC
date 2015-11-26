//
//  main.m
//  chp5 Loop
//
//  Created by Wenslow on 15/11/24.
//  Copyright © 2015年 Wenslow. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {

#pragma mark - exercise 1#
        NSLog(@" n  n*n");
        for (int n = 1; n <= 10; n++) {
            NSLog(@"%2d  %3d", n, n * n);
        }
        
#pragma mark - exercise 2#
        NSLog(@" n  trianglarNumber");
        for (int n = 5; n <= 50; n += 5) {
            NSLog(@"%2d  %9d", n, n * (n + 1) / 2);
        }
        
#pragma mark - exercise 3#
        NSLog(@" n  n!");
        int m = 1;
        for (int n = 1; n <= 10; n++) {
            m *= n;
            NSLog(@"%2d  %d", n, m);
        }
        
#pragma mark - exercise 4#
        int triangularNumber = 0;
        for (int n = 1; n <= 10; n++) {
            triangularNumber += n;
            NSLog(@"%-2d %d", n, triangularNumber);
        }
        
#pragma mark - exercise 5#
        int number;
        triangularNumber = 0;
        NSLog(@"Please enter the trangular number");
        scanf("%d", &number);
        for (int n = 1; n <= number; n++) {
            triangularNumber += n;
        }
        NSLog(@"Triangular number %d is %d", number, triangularNumber);
        
#pragma mark - exercise 6#
        //5-2
        int n;
        triangularNumber = 0;
        while (n <= 200) {
            triangularNumber += n;
            n++;
        }
        NSLog(@"The 200th triangular number is %d",triangularNumber);
        
        //5-3
        n = triangularNumber = 0;
        NSLog(@" n Sum from 1 to n");
        NSLog(@"-- --------");
        while (n <= 10) {
            triangularNumber += n;
            n++;
            NSLog(@"%2d        %d", n, triangularNumber);
        }
        
        //5-4
        n = triangularNumber = 0;
        NSLog(@"Please enter the trangular number");
        scanf("%d", &number);
        while (n <= number) {
            triangularNumber += n;
            n++;
        }
        NSLog(@"Triangular number %d is %d", number, triangularNumber);
        
#pragma mark - exercise 7#
        int right_digit;
        NSLog(@"Enter your number");
        scanf("%d", &number);
        while (number != 0) {
            right_digit = number % 10;
            NSLog(@"%d", right_digit);
            number /= 10;
        }
        
#pragma mark - exercise 8#
        int sum = 0;
        NSLog(@"Please enter a number");
        scanf("%d", &number);
        while (number != 0) {
            sum += number % 10;//将每个余数相加
            number /= 10;
        }
        NSLog(@"The result is %d", sum);
    }
    return 0;
}
