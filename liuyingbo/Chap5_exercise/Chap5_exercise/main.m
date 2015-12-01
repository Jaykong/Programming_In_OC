//
//  main.m
//  Chap5_exercise
//
//  Created by Yingbo Liu on 11/29/15.
//  Copyright © 2015 Yingbo Liu. All rights reserved.
//



#pragma mark - exercise 1#
#import <Foundation/Foundation.h>
        
        int main(int argc, const char * argv[]) {
            @autoreleasepool {
                NSLog (@"TABLE OF n and n^2");
                NSLog (@"-- ---------------");
                for (int i = 1; i<=10;++i)
                    NSLog (@" %i %i", i, i*i);
            }
            return 0;
            
        }

#pragma mark - exercise 2#

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        int triangularNumber;
        int n;
        for (n =1; triangularNumber <=50;n++){
            triangularNumber =  n*(n + 1) / 2;
            if (triangularNumber%5 == 0)
                NSLog(@"the every fifth number is %i   %i", n, triangularNumber);
            
        }
    }
    
    return 0;
}

        
        
        
#pragma mark - exercise 3#

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        int n;
        int fac, previousProduct =1;
        
        for (n = 1; n<=10; n++){
            fac = n*previousProduct;
            previousProduct = fac;
            NSLog(@"The factorials are %i", fac);
        }
        
    }
    
    return 0;
}
        
        
#pragma mark - exercise 4#
#import <Foundation/Foundation.h>
int main (int argc, char * argv[])
{
    @autoreleasepool {
        int n, number, triangularNumber, counter,numberOfCal;
        NSLog(@"enter the number of triangular numbers to be calculated");
        scanf("%i", &numberOfCal);
        for ( counter = 1; counter <= numberOfCal; ++counter ) {
            NSLog (@"What triangular number do you want?");
            scanf ("%i", &number);
            triangularNumber = 0;
            for ( n = 1; n <= number; ++n )
                
                
                triangularNumber += n;
            NSLog (@"Triangular number %i is %i", number, triangularNumber);
        }
    }
    return 0;
}

#pragma mark - exercise 5#

        
#pragma mark - exercise 6#
//pro5.2#
#import <Foundation/Foundation.h>
int main (int argc, char * argv[])
{
    @autoreleasepool {
        int n, triangularNumber;
        triangularNumber = 0;
        
        n =1;
        while(n<=200)
            triangularNumber +=n;
            n +=1;
        
        NSLog (@"The 200th triangular number is %i", triangularNumber);
    }
    return 0;
}

//prog5.3

#import <Foundation/Foundation.h>
int main (int argc, char * argv[])
{
    @autoreleasepool {
        int n, triangularNumber;
        NSLog (@"TABLE OF TRIANGULAR NUMBERS");
        NSLog (@" n Sum from 1 to n");
        NSLog (@"-- ---------------");
        triangularNumber = 0;
        
        n = 1;
        while(n<=10){
            
            triangularNumber += n;
            n++;
            NSLog (@" %i %i", n, triangularNumber);
        }
    }
    return 0;
}


//5.4.//

#import <Foundation/Foundation.h>
int main (int argc, char * argv[])
{
    @autoreleasepool {
        int n, number, triangularNumber;
        
        NSLog (@"What triangular number do you want?");
        scanf ("%i", &number);
        triangularNumber = 0;
        
        
        n=1;
        
        while(n <= number){
            triangularNumber += n;
            n++;
         NSLog (@"Triangular number %i is %i\n", number, triangularNumber);
        }
        
    }
    return 0;
}
        



//5.5 QQQQQQQuestion!!!
#import <Foundation/Foundation.h>
int main (int argc, char * argv[])
{
    @autoreleasepool {
        int n, number, triangularNumber, counter;
        for ( counter = 1; counter <= 5; ++counter ) {
            NSLog (@"What triangular number do you want?");
            scanf ("%i", &number);
            triangularNumber = 0;
            for ( n = 1; n <= number; ++n )
                triangularNumber += n;
            NSLog (@"Triangular number %i is %i", number, triangularNumber);
        }
    }
    return 0;
}


#pragma mark - exercise 7#
// When I type a negative number into program 5.8, it returned the
//reversed numbers also  with negative signs before the numbers.
        
        
#pragma mark - exercise 8#
#import <Foundation/Foundation.h>
int main (int argc, char * argv[])
{
    @autoreleasepool {
        int number, right_digit;
        
        int sum = 0;
        NSLog (@"Enter your number.");
        scanf ("%i", &number);
        while ( number != 0 ) {
            right_digit = number % 10;
            
            sum = sum + right_digit;
            number /= 10;
        }
        NSLog (@"%i", sum);
        
    }
    return 0;
}
        
  

