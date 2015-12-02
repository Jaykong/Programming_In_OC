//
//  main.m
//  Chap6_exercise
//
//  Created by Yingbo Liu on 11/29/15.
//  Copyright © 2015 Yingbo Liu. All rights reserved.
//


#pragma mark - exercise 1#
#import <Foundation/Foundation.h>
        int main(int argc, const char * argv[]) {
            @autoreleasepool {
                
                
                int number1, number2;
                NSLog(@"enter the first number");
                scanf("%i", &number1);
                NSLog(@"enter the second1 number");
                scanf("%i", &number2);
                
                if (number1 % number2 == 0)
                    NSLog(@"The first is divisible by the second");
                
                else
                    NSLog(@"its not divisible");
                
            }
            return 0;
        }
        

        
#pragma mark - exercise 2#

#import <Foundation/Foundation.h>

    int main(int argc, char * argv[])
{
    @autoreleasepool {
        double value1, value2;
        char operator;
        Calculator *deskCalc = [[Calculator alloc] init];
        NSLog (@"Type in your expression.");
        scanf ("%lf %c %lf", &value1, &operator, &value2);
        
        if ( operator == '+' )
            [deskCalc setAccumulator: value1];
        [deskCalc add: value2];
        else if ( operator == '-' )
            [deskCalc setAccumulator: value1];
        [deskCalc subtract: value2];
        else if ( operator == '*' )
            [deskCalc setAccumulator: value1];
        [deskCalc multiply: value2];
        else if ( operator == '/' )
            if ( value2 == 0 )
                NSLog (@"Division by zero.");
            else
                [deskCalc setAccumulator: value1];
        [deskCalc divide: value2];
            else
                NSLog (@"Unknown operator.");
        NSLog (@"%.2f", [deskCalc accumulator]);
    }
    return 0;
}


        
#pragma mark - exercise 3#
//Modify the print method from the Fraction class so that whole numbers are displayed
//as such (so the fraction 5/1 should display as simply 5 ). Also modify the method to
//display fractions with a numerator of 0 as simply zero.

        
#pragma mark - exercise 4#

#import <Foundation/Foundation.h>
int main(int argc, char * argv[])
{
    @autoreleasepool {
        double value1, value2;
        char operator;
        Calculator *deskCalc = [[Calculator alloc] init];
        NSLog (@"Type in a number and an operator");
        scanf ("%lf %c", &value1, &operator);
        if (operator == "S" && value != NUN)
            [deskCalc setAccumulator: value1];
        
        if ( operator == '+' )
            [deskCalc setAccumulator: value1];
            NSlog(@"%i,   %char", value2, operator);
            [deskCalc add: value2];
        else if ( operator == '-' )
            [deskCalc setAccumulator: value1];
            NSlog(@"%i,   %char", value2, operator);
            [deskCalc subtract: value2];
        else if ( operator == '*' )
            [deskCalc setAccumulator: value1];
            NSlog(@"%i,   %char", value2, operator);
            [deskCalc multiply: value2];
        else if ( operator == '/' )
            if ( value2 == 0 )
                NSLog (@"Division by zero.");
            else
                [deskCalc setAccumulator: value1];
                NSlog(@"%i,   %char", value2, operator);
                [deskCalc divide: value2];
            else
                NSLog (@"Unknown operator.");
        NSLog (@"%.2f", [deskCalc accumulator]);
    }
    return 0;
}



        
        
#pragma mark - exercise 5#
#import <Foundation/Foundation.h>
int main (int argc, char * argv[])
{
    @autoreleasepool {
        int number, right_digit;
        NSLog (@"Enter your number.");
        scanf ("%i", &number);
        if (number < 0){
            number = -number;
            while(number != 0){
                right_digit = number % 10;
                NSLog (@"%i", right_digit);
                number /= 10;}
            
            NSLog(@"-");
        }
        
        else{
            while (number !=0){
                right_digit = number % 10;
                NSLog (@"%i", right_digit);
                number /= 10;
            }
        }
        
        
    }
    return 0;
}



        
#pragma mark - exercise 6#
#import <Foundation/Foundation.h>

int main (int argc, char * argv[])
{
    @autoreleasepool {
        int num;
        double number;
        scanf("%lf", &number);
        while (number >1){
            
            number = number / 10;
        }
        
        number = number * 10;
        num = number;
        while (number >0){
            switch (num) {
                case 9:
                    NSLog(@"nine");
                    break;
                case 8:
                    NSLog(@"eight");
                    break;
                case 7:
                    NSLog(@"seven");
                    break;
                    
                default:
                    NSLog(@"NUN");
                    break;
            }
            
            number = number - num;
            number = number *10;
            num = number;
            
        }
    }
    return 0;
    
}


        
        
#pragma mark - exercise 7#


//1.program could simply skip all even numbers as possible primes and as possible divisors.

//2.you can set up the for loop to continue as long as no divisor is found and the value of d is less than p .

#import <Foundation/Foundation.h>
int main (int argc, char * argv[])
{
    @autoreleasepool {
        int p, d, isPrime;
        for ( p = 2; p <= 50; p = p+2 ) {
            isPrime = 1;
            for ( d = 2; d < p; ++d )
                if ( p % d == 0 )
                    isPrime = 0;
            if ( isPrime != 0 )
                NSLog (@"%i ", p);
        }
    }
    return 0;
}
Program 6.10
        

