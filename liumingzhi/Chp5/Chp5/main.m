//
//  main.m
//  Chp5
//
//  Created by lmz on 15/12/6.
//  Copyright © 2015年 lmz. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
#pragma mark - exercise 1#
        NSLog(@"平方");
        int a;
        for (a=1; a<=10; a++)
        {
            NSLog(@"%d --- %d",a,a*a);
        }
#pragma mark - exercise 2#
        NSLog(@"三角数");
        for (a=5; a<=50; a=a+5)
        {
            NSLog(@"%d --- %d",a,a*(a+1)/2);
        }
#pragma mark - exercise 3#
        NSLog(@"阶乘");
        int b=1;
        for (a=1; a<=10; a++)
        {
            NSLog(@"%d --- %d",a,a*b);
            b=a*b;
        }
#pragma mark - exercise 4#
        NSLog(@"阶乘2");
        b=1;
        for (a=1; a<=10; a++)
        {
            NSLog(@"%-2i --- %i",a,a*b);
            b=a*b;
        }
#pragma mark - exercise 5#
        int number;
        int triangularNumber;
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
        triangularNumber = 0;
        n = 0;
        NSLog(@" n Sum from 1 to n");
        NSLog(@"----------");
        while (n <= 10)
        {
            triangularNumber += n;
            n++;
            NSLog(@"%2d --- %d", n, triangularNumber);
        }
        
//5-4
        triangularNumber = 0;
        n = 0;
        NSLog(@"Please enter the trangular number");
        scanf("%d", &number);
        while (n <= number)
        {
            triangularNumber += n;
            n++;
        }
        NSLog(@"Triangular number %d is %d", number, triangularNumber);
        
#pragma mark - exercise 7#
        int right_digit;
        NSLog(@"Enter your number");
        scanf("%d", &number);
        while (number != 0)
        {
            right_digit = number % 10;
            NSLog(@"%d", right_digit);
            number /= 10;
        }
#pragma mark - exercise 8#
        int t,sum;
        sum = 0;
        NSLog(@"输入你的数来进行各位求和");
        scanf("%i",&t);
        while (t != 0)
        {
            sum += t % 10;
            t = t / 10;
        }
        NSLog(@"各数字之和为%d",sum);
    }
    return 0;
}
