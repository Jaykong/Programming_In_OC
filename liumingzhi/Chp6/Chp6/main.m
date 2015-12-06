//
//  main.m
//  Chp6
//
//  Created by lmz on 15/12/6.
//  Copyright © 2015年 lmz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Calculator.h"
#import "Fraction.h"
#import "Calculator 2.h"
#import "RollTheNumAndReadInEng.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
#pragma mark - exercise 1#
        int a,b;
        NSLog(@"输入两个整数a和b");
        scanf("%d %d",&a,&b);
        if (a % b == 0)
        {
            NSLog(@"%d可以被%d整除",a,b);
        }
        else
        {
            NSLog(@"%d不可以被%d整除",a,b);
        }
#pragma mark - exercise 2#
        double value1, value2;
        char operator;
        
        Calculator *deskCalc = [[Calculator alloc]init];
        
        NSLog(@"输入你的运算式");
        scanf("%lf %c %lf", &value1, &operator, &value2);
        
        [deskCalc setAccumulator:value1];
        
        if (operator == '+')
        {
            [deskCalc add:value2];
        }
        else if (operator == '-')
        {
            [deskCalc subtract:value2];
        }
        else if (operator == '*')
        {
            [deskCalc multiply:value2];
        }
        else if (operator == '/')
        {
            if (value2 == 0) {
                NSLog(@"除数不能为零");
            }
            else
            {
                [deskCalc divide:value2];
            }
        }
        else
        {
            NSLog(@"未知运算符");
        }
        NSLog(@"计算结果为 %.2f", deskCalc.accumulator);
#pragma mark - exercise 3#
        Fraction *aFraction = [[Fraction alloc] init];
        aFraction.numerator = 0;
        aFraction.denominator = 1;
        
        [aFraction print];
        NSLog(@" =");
        NSLog(@"%g", [aFraction convertToNum]);
        
#pragma mark - exercise 4#
        double value4;
        char operator4;
        Calculator_2 *myCal2 = [[Calculator_2 alloc]init];
        NSLog(@"Please input a number and a operation.");
        NSLog(@"Like + - * / S E");
        NSLog(@"Begin Calculations");
        NSLog(@"Input '0 E' or '0 e' to stop the calculator");
        scanf("%lf %c", &value4, &operator4);
        
        while (operator4 != 'S' && operator4 != 's') {
            NSLog(@"You should set the value of accumulator first");
            scanf("%lf %c", &value4, &operator4);
        }
        [myCal2 setAccumulator:value4];
        
        NSLog(@"Continue Calculations");
        scanf(" %lf %c", &value4, &operator4);
        while (operator4 != 'E' && operator4 != 'e') {
            switch (operator4) {
                case '+':
                    [myCal2 add:value4];
                    break;
                case '-':
                    [myCal2 subtract:value4];
                    break;
                case '*':
                    [myCal2 multiply:value4];
                    break;
                case '/':
                    while (value4 == 0) {
                        NSLog(@"The divisor mustn't be zero. Input again.");
                        scanf("%lf %c", &value4, &operator4);
                    }
                    [myCal2 divide:value4];
                    break;
                default:
                    NSLog(@"Unknown operator. Input again.");
                    scanf("%lf %c", &value4, &operator4);
                    continue;
            }
            NSLog(@"Continue Calculations");
            scanf(" %lf %c", &value4, &operator4);
        }

        [myCal2 end];
#pragma mark - exercise 5#
        int number, right_digit;
        NSLog(@"Enter your number");
        scanf("%d", &number);
        
        if (number < 0)
        {
            number = -number;
            while (number != 0)
            {
                right_digit = number % 10;
                printf("%d", right_digit);
                number /= 10;
            }
            printf("-");
        }
        else if (number > 0)
        {
            while (number != 0)
            {
                right_digit = number % 10;
                printf("%d", right_digit);
                number /= 10;
            }
        }
        else
        {
            printf("0");
        }
        printf("\n");

#pragma mark - exercise 6#
        RollTheNumAndReadInEng *num_word = [[RollTheNumAndReadInEng alloc] init];
        NSLog(@"输入你的数字，程序将倒序并以英语显示它");
        scanf("%d", &number);
        if (number == 0)
        {
            NSLog(@"zero");
        }
        else if (number < 0)
        {
            num_word.number = -number;
            [num_word numberToWord];
        }
        else
        {
            num_word.number = number;
            [num_word numberToWord];
        }
#pragma mark - exercise 7#
        int p,d;
        BOOL isPrime;
        
        for (p = 2; p <= 50; p++)
        {
            isPrime = YES;
            if (p % 2 == 0 && p != 2)
            {
                continue;
            }
            for (d = 2; d < p && isPrime == YES; d++)
            {
                if (p % d == 0)
                {
                    isPrime = NO;
                }
            }
            if (isPrime == YES)
            {
                NSLog(@"%d", p);
            }
        }
    }
    return 0;
}
