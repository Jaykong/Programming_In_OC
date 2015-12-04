//
//  main.m
//  chap6
//
//  Created by 笑郎 on 15/11/28.
//  Copyright © 2015年 Miami Heat. All rights reserved.
//






#import <Foundation/Foundation.h>
@interface Calculator : NSObject

-(void)setAccumulator:(double) value;
-(void)clear;
-(double)accumulator;

-(void)add:(double)value;
-(void)subtract:(double)value;
-(void)multiply:(double)value;
-(void)divide:(double)value;
-(void)print;
@end


@implementation Calculator
{
    double accumulator;
}
-(void)setAccumulator:(double)value
{
    accumulator=value;
}
-(void)clear
{
    accumulator=0;
}
-(double)accumulator
{
    return accumulator;
}
-(void)add:(double)value
{
    accumulator += value;
}
-(void)subtract:(double)value
{
    accumulator -= value;
}
-(void)multiply:(double)value
{
    accumulator *= value;
}
-(void)divide:(double)value
{
    accumulator /= value;
}
-(void)print
{
    NSLog(@"The answer is accumulator = %f",accumulator);
}

@end




@interface Fraction : NSObject
-(void)setNumerator:(int)n andDenominator:(int)d;
-(void)print;
-(int)numerator;
-(int)denominator;

-(void)reduce;

@end

@implementation Fraction
{
    int numerator;
    int denominator;
}
-(void)setNumerator:(int)n andDenominator:(int)d
{
    numerator=n;
    denominator=d;
}
-(int)numerator
{
    return numerator;
}
-(int)denominator
{
    return denominator;
}
-(void)print
{
    if (numerator % denominator == 0) {
        NSLog(@"%i",numerator / denominator);
    }
    //NSLog(@"%i/%i",numerator,denominator);
    else if (numerator % denominator !=0)
    {
        NSLog(@" %i + %i / %i",numerator / denominator,numerator % denominator,denominator);
    }
    else if (denominator ==0)
        NSLog(@"%i / 0",numerator);
    [self reduce];
}
-(void)reduce
{
    int u=numerator;
    int v=denominator;
    int temp;
    
    while (v != 0) {
        temp = u % v;
        u = v;
        v = temp;
    }
    numerator /= u;
    denominator /= u;
}

@end



int main(int argc, const char * argv[]) {
    @autoreleasepool {
       
#pragma mark-excise1#
//        int a1,a2;
//        
//        NSLog(@"Type");
//        scanf("%i %i",&a1,&a2);
//        
//        if(a1%a2 ==0)
//            NSLog(@"%i 可以被 %i 整除",a1,a2);
//        else
//            NSLog(@"%i 不可以被 %i 整除",a1,a2);


#pragma mark-excise2#
        
//        Calculator *cal=[[Calculator alloc]init];
//        double value1,value2;
//        char operator;
//        
//        
//        NSLog(@"Type");
//        scanf("%lf %c %lf",&value1,&operator,&value2);
//        
//        
//        [cal setAccumulator:value1];
//        
//        if (operator == '+')
//            [cal add:value2];
//        
//        else if (operator == '-')
//            [cal subtract:value2];
//        
//        else if (operator =='*')
//            [cal multiply:value2];
//        
//        else if (operator =='/')
//            if (value2 == 0)
//                NSLog(@"Division by zero,Accumulator=%2.f",cal.accumulator);
//            else
//                [cal divide:value2];
//        else
//            NSLog(@"Unknown operator,Accumulator = %lf",cal.accumulator);
//        
//   
//        NSLog(@"%.2f",[cal accumulator]);

        
#pragma mark-excise3#
        
//        Fraction *XLFrac = [[Fraction alloc]init];
//        [XLFrac setNumerator:4 andDenominator:3];
//        [XLFrac print];

        
#pragma mark-excise4#
        
//        double value;
//        char operator;
//        BOOL notEnd;
//        Calculator *cal1=[[Calculator alloc]init];
//
//        
//        notEnd=YES;
//        while (notEnd ==YES) {
//            
//            NSLog(@"Type: value operator");
//            scanf("%lf %c",&value,&operator);
//            
//            switch (operator) {
//                case '+':
//                    [cal1 add:value];
//                    break;
//                case '-':
//                    [cal1 subtract:value];
//                    [cal1 print];
//
//                    break;
//                    
//                case '*':
//                case 'x':
//                    [cal1 multiply:value];
//
//                    break;
//                    
//                case '/':
//                {
//                    if (value == 0){
//                        NSLog(@"Division by zero ");
//                    }
//                    
//                    if (value != 0)
//                       [cal1 divide:value];
//                    
//
//                    break;
//                }
//                
//                case 's':
//                case 'S':
//                    [cal1 setAccumulator:value];
//
//                    break;
//                    
//                case 'e':
//                case 'E':
//                    notEnd = NO;
//                    NSLog(@"End");
//                    break;
//                    
//                default:
//                    NSLog(@"Unknow operator");
//                    break;
//                    
//            }
//            [cal1 print];
//
//
//        }
        
        
#pragma mark-excise5#
//        int number,rightDigit;
//        BOOL lessThanZero=NO;
//        NSLog(@"Type : number ");
//        scanf("%i", &number);
//        if (number <0) {
//            lessThanZero = YES;
//        }
//        
//         for (; number != 0 ; number /= 10)
//         {
//             rightDigit = (number) >= 0 ? ( number % 10):(-number % 10);
//             NSLog(@"%i",rightDigit);
//             
//         }
//        while (lessThanZero) {
//            NSLog(@"-");
//            break;
//        }

        
#pragma mark-excise6#
        int number , placeCount = 1 , targetDigit , loopCount , tempNumber ;
        
        NSLog(@"Enter your number");
        scanf("%i",&number);
        
        if (number < 0 ) {
            number = - number;
        }
        tempNumber = number ;
        
        do
        {
            ++loopCount;
            placeCount *= 10;
            tempNumber /= 10;
        }
        while ( tempNumber != 0 );
        
        for ( int i = loopCount ; i > 0 ; --i) {
            tempNumber = number ;
            
            tempNumber = tempNumber / (placeCount / 10);
            targetDigit = tempNumber % 10;
            placeCount /= 10;
            
            switch (targetDigit) {
                case 0:
                    NSLog(@"zero");
                    break;
                    
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
                    
                    
                default:
                    NSLog(@"error");
                    break;
            }
        }
        
#pragma mark-excise7#
//        int p,d;
//        BOOL isPrime;
//        
//        for(p=2 ; p<=50 ; ++p){
//            isPrime = YES;
//            
//            if (p % 2 ==0 )
//                isPrime =NO;
//            
//            
//            for (d=2 ; d<p ; ++d ) {
//                if (p % d == 0)
//                    isPrime = NO;
//                if (isPrime == NO) {
//                    break;
//                }
//            }
//            if (isPrime == YES)
//                NSLog(@"%i",p);
//
//        }
        
        
        

    }
    return 0;
}
