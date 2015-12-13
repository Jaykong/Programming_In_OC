//
//  RollTheNumAndReadInEng.m
//  Chp6
//
//  Created by lmz on 15/12/6.
//  Copyright © 2015年 lmz. All rights reserved.
//

#import "RollTheNumAndReadInEng.h"

@implementation RollTheNumAndReadInEng
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
    
    while (self.number != 0)
    {
        right_digit = self.number % 10;
        self.number /= 10;
        
        [self numberToWord];
        
        switch (right_digit)
        {
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
