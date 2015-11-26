//
//  main.m
//  chp6 choose
//
//  Created by Wenslow on 15/11/24.
//  Copyright © 2015年 Wenslow. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Calculator: NSObject
- (void)setAccumulator: (double)value;
- (void)clear;
- (double)accumulator;
- (void)add: (double)value;//加
- (void)subtract: (double)value;//减
- (void)multiply: (double)value;//乘
- (void)divide: (double)value;//除
@end

@implementation Calculator
{
    double accumulator;//累加器
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

- (void)add: (double)value
{
    accumulator += value;
}

- (void)subtract: (double)value
{
    accumulator -= value;
}

- (void)multiply: (double)value
{
    accumulator *= value;
}

- (void)divide: (double)value
{
    accumulator /= value;
}
@end

#pragma mark - exercise 3-1#
@interface Fraction: NSObject
- (void)print;
- (void)setNumerator: (int)n;
- (void)setDenominator: (int)n;
- (int)numerator;
- (int)denominator;
- (double)convertToNum;
@end

@implementation Fraction
{
    int numerator, denominator;
}

- (void)print
{
    NSLog(@"%d / %d", numerator, denominator);
}
- (void)setNumerator: (int)n
{
    numerator = n;
}
- (void)setDenominator: (int)n
{
    denominator = n;
}
- (int)numerator
{
    return numerator;
}
- (int)denominator
{
    return denominator;
}
- (double)convertToNum
{
    if (denominator != 0) {
        if (numerator == 0) {//如果分子为0，则返回0
            return 0;
        }
        if (denominator == 1) {//若分母为0，则直接返回分子的值
            return numerator;
        }else{
        return (double)numerator / denominator;
        }
    }else{
        return NAN;
    }
}
@end

#pragma mark - exercise 4-1#
@interface SimpleCalculator: NSObject
- (void)setAccumulator: (double)value;
- (double)accumulator;
- (void)end;
- (void)add: (double)value;//加
- (void)subtract: (double)value;//减
- (void)multiply: (double)value;//乘
- (void)divide: (double)value;//除
@end

@implementation SimpleCalculator
{
    double accumulator;//累加器
}

- (void)setAccumulator:(double)value
{
    accumulator = value;
    NSLog(@"= %f", self.accumulator);
}

- (void)end
{
    NSLog(@"= %f", self.accumulator);
    NSLog(@"End of Calculations.");
}

- (double)accumulator
{
    return accumulator;
}

- (void)add: (double)value
{
    accumulator += value;
    NSLog(@"= %f", self.accumulator);
}

- (void)subtract: (double)value
{
    accumulator -= value;
    NSLog(@"= %f", self.accumulator);
}

- (void)multiply: (double)value
{
    accumulator *= value;
    NSLog(@"= %f", self.accumulator);
}

- (void)divide: (double)value
{
    accumulator /= value;
    NSLog(@"= %f", self.accumulator);
}
@end

#pragma mark - exercise 6-1#
@interface NToW : NSObject
- (void)setNumber: (int)n;
- (int)number;
- (void)numberToWord;
@end
@implementation NToW
{
    int number;
}

- (void)setNumber: (int)n
{
    number = n;
}
- (int)number
{
    return number;
}
- (void)numberToWord
{
    int right_digit = 0;
    
    while (self.number != 0) {
        right_digit = self.number % 10;
        self.number /= 10;
        
        [self numberToWord];//递归
        
        switch (right_digit) {
            case 1:
                NSLog(@"one");
                break;
            case 2:
                NSLog(@"two");
                break;
            case 3:
                NSLog(@"three");
                break;
            case 4:
                NSLog(@"four");
                break;
            case 5:
                NSLog(@"five");
                break;
            case 6:
                NSLog(@"six");
                break;
            case 7:
                NSLog(@"seven");
                break;
            case 8:
                NSLog(@"eight");
                break;
            case 9:
                NSLog(@"nine");
                break;
            case 0:
                NSLog(@"zero");
                break;
            default:
                continue;
        }
    }
}

@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
#pragma mark - exercise 1#
        NSLog(@"Please input two integers");
        int a, b;
        scanf("%d%d", &a, &b);
        if (a % b == 0) {
            NSLog(@"%d can divided by %d", a, b);
        }else{
            NSLog(@"%d can't be divided by %d", a, b);
        }

#pragma mark - exercise 2#
        double value1, value2;
        char operator;
        Calculator *deskCalc = [[Calculator alloc]init];
        NSLog(@"Type in your number expression number");
        scanf("%lf %c %lf", &value1, &operator, &value2);
        [deskCalc setAccumulator:value1];
        
        if (operator == '+') {
            [deskCalc add:value2];
        }else if (operator == '-'){
            [deskCalc subtract:value2];
        }else if (operator == '*'){
            [deskCalc multiply:value2];
        }else if (operator == '/'){
            if (value2 == 0) {
                NSLog(@"The divisor mustn't be zero");
            }else{
                [deskCalc divide:value2];
            }
        }else{
            NSLog(@"Unknown operator");
        }
        NSLog(@"The value of accumulator is %.2f", deskCalc.accumulator);
        
#pragma mark - exercise 3-2#
        Fraction *aFraction = [[Fraction alloc]init];
        aFraction.numerator = 0;
        aFraction.denominator = 1;
        
        [aFraction print];
        NSLog(@" =");
        NSLog(@"%g", [aFraction convertToNum]);
        
#pragma mark - exercise 4-2#
        double value4;
        char operator4;
        SimpleCalculator *simpleDeskCalc = [[SimpleCalculator alloc]init];
        NSLog(@"Please input a number and a operation.");
        NSLog(@"Like + - * / S E");
        NSLog(@"Begin Calculations");
        NSLog(@"Input '0 E' or '0 e' to stop the calculator");
        scanf("%lf %c", &value4, &operator4);
        
        while (operator4 != 'S' && operator4 != 's') {//必须先设定累加器的值
            NSLog(@"You should set the value of accumulator first");
            scanf("%lf %c", &value4, &operator4);
        }
        [simpleDeskCalc setAccumulator:value4];//设定累加器的值
        
        NSLog(@"Continue Calculations");
        scanf(" %lf %c", &value4, &operator4);
        while (operator4 != 'E' && operator4 != 'e') {//当输入的operator不是‘E’或‘e’时，开始循环计算
            switch (operator4) {
                case '+':
                    [simpleDeskCalc add:value4];
                    break;
                case '-':
                    [simpleDeskCalc subtract:value4];
                    break;
                case '*':
                    [simpleDeskCalc multiply:value4];
                    break;
                case '/':
                    while (value4 == 0) {//当分母为0时，要求重新输入分母
                        NSLog(@"The divisor mustn't be zero. Input again.");
                        scanf("%lf %c", &value4, &operator4);
                    }
                    [simpleDeskCalc divide:value4];
                    break;
                default://若输入非法字符，则要求重新输入operator
                    NSLog(@"Unknown operator. Input again.");
                    scanf("%lf %c", &value4, &operator4);
                    continue;
            }
            NSLog(@"Continue Calculations");
            scanf(" %lf %c", &value4, &operator4);
        }
        //输入operator时‘E’或‘e'时，停止计算，并打印accumulator的值
        [simpleDeskCalc end];
        
#pragma mark - exercise 5#
        int number, right_digit;
        NSLog(@"Enter your number");
        scanf("%d", &number);
        
        if (number < 0) {//当number为负数时，先的到number的绝对值
            number = -number;
            while (number != 0) {
                right_digit = number % 10;
                printf("%d", right_digit);
                number /= 10;
            }
            printf("-");//在字符串的最后打印‘－’
        }else if (number > 0){
            while (number != 0) {
                right_digit = number % 10;
                printf("%d", right_digit);
                number /= 10;
            }
        }else{//当number为0时，输出0
            printf("0");
        }
        printf("\n");
        
#pragma mark - exercise 6-2#
        NToW *num_word = [[NToW alloc]init];
        
        NSLog(@"Enter your number, i can change it to word");
        scanf("%d", &number);
        if (number == 0) {//当number为0时，打印zero
            NSLog(@"zero");
        }else if (number < 0){
            num_word.number = -number;
            [num_word numberToWord];
        }else {
            num_word.number = number;
            [num_word numberToWord];
        }
    
#pragma mark - exercise 7#
    int p,d;
    BOOL isPrime;
    
    for (p = 2; p <= 50; p++) {
        isPrime = YES;
        if (p % 2 == 0 && p != 2) {//直接跳过大于2的偶数
            continue;
        }
        for (d = 2; d < p && isPrime == YES; d++) {//当p能被一个小于自己的数整除时，他就不是素数了
            if (p % d == 0) {
                isPrime = NO;
            }
        }
        if (isPrime == YES) {
            NSLog(@"%d", p);
        }
    }
    return 0;
    }
}
