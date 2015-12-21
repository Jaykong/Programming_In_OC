//
//  main.m
//  chp13 C
//
//  Created by Wenslow on 15/12/4.
//  Copyright © 2015年 Wenslow. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fraction.h"
#import "DateClass.h"

#pragma mark - exercise 1-1#
double average (double a[], int n)
{
    double sum = 0;
    for (int i = 0; i < n ; i++) {
        sum += a[i];
    }
    return sum / n;
}

#pragma mark - exercise 3-1#
void isPrime (int n)
{
    int P[n];
    for (int i = 2; i < n  ; i++) {
        P[i] = 1;//数组的第三个元素开始的所有元素的值为1
    }
    for (int i = 2; i < n ; i++) {
        if (P[i]) {
            for (int j = i; j * i <= n  ; j++) {
                P[i * j] = 0;//把质数的倍数都去掉
            }
        }
    }
    for (int i = 2; i < n ; i++) {
        if (P[i]) {
            NSLog(@"%d", i);//不打印质数的倍数
        }
    }
}

#pragma mark - exercise 4-1#
Fraction*  sumFraction (NSArray *arry, int n)
{
    Fraction *temp = [[Fraction alloc]init];
    [temp setTo:0  over:1];
    for (int i = 1; i <= n - 1; i++) {
        temp = [temp add111:arry[i]];//将每一个fraction对象都与temp相加
    }
    return temp;
}

#pragma mark - exercise 10-1#
void (^exchange) (int *p1, int *p2) =
    ^(int *p1, int *p2){
        int temp;
        temp = *p1;
        *p1 = *p2;
        *p2 = temp;
    };

int main(int argc, const char * argv[]) {
    @autoreleasepool {
#pragma mark - exercise 1-2#
        double num[10] = {1.1, 2.2, 3.3, 4.4, 5.5, 6.6, 7.7, 8.8, 9.9, 10.1};
        NSLog(@"The average is %g", average(num, 10));
        
#pragma mark - exercise 2-3#
        Fraction *afraction = [[Fraction alloc]init];
        [afraction setTo:2 over:4];
        [afraction reduce];
        NSLog(@"%d/%d", afraction.numerator, afraction.denominator);
        
#pragma mark - exercise 3-2#
        isPrime(150);
        
#pragma mark - exercise 4-2#
        Fraction *bfraction = [[Fraction alloc]init];
        Fraction *cfraction = [[Fraction alloc]init];
        Fraction *dfraction = [[Fraction alloc]init];
        [bfraction setTo:3 over:4];
        [cfraction setTo:2 over:5];
        [dfraction setTo:3 over:5];
        
        NSArray *array;//将fraction对象添加到数组中
        array = [NSArray arrayWithObjects:afraction, bfraction, cfraction, dfraction, nil];
        
        Fraction *sumResult = [[Fraction alloc]init];
        sumResult = sumFraction(array, 4);
        NSLog(@"%d/%d", sumResult.numerator, sumResult.denominator);

#pragma mark - exercise 5#
        typedef struct {int day; int month; int year;} Date;
        Date todayDate;
        todayDate.day = 5;
        todayDate.month = 12;
        todayDate.year = 2015;
        
#pragma mark - exercise 6#
        DateClass *date1 = [[DateClass alloc]init];
        date1.day = 5;
        date1.month = 12;
        date1.year = 2015;
        date1 = [date1 dateUpdate];
        NSLog(@"day:%d month:%d year:%d", date1.day, date1.month, date1.year);
        
#pragma mark - exercise 7#
        char *message = "Programming in Objective-C is fun";
        char message2[] = "You said it";
        
        //set 1
        NSLog(@"Programming in Objective-C is fun");
        NSLog(@"%s", "Programming in Objective-C is fun");
        NSLog(@"%s", message);
        
        //set 2
        NSLog(@"You said it");
        NSLog(@"%s", message2);
        NSLog(@"%s", &message2[0]);
        
        //set 3
        NSLog(@"said it");
        NSLog(@"%s", message2 + 4);
        NSLog(@"%s", &message2[4]);

#pragma mark - exercise 9#
        NSLog(@"This is a test");
//        NSLog("This is a test");
        NSLog(@"%s", "This is a test");
//        NSLog(@"%s", @"This is a test");
//        NSLog("%s", "This is a test");
//        NSLog("%s", @"This is a test");
        NSLog(@"%@", @"This is a test");
//        NSLog(@"%@", "This is a test");
        
#pragma mark - exercise 10-2#
        int i1 = -5, i2 = 66, *p1 = &i1, *p2 = &i2;
        NSLog(@"i1 = %d, i2 = %d", i1, i2);
        exchange (p1, p2);
        NSLog(@"i1 = %d, i2 = %d", i1, i2);
        exchange (p1, p2);
        NSLog(@"i1 = %d, i2 = %d", i1, i2);
    }
    return 0;
}
