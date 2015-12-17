//
//  main.m
//  WXLchap2
//
//  Created by 笑郎 on 15/12/17.
//  Copyright © 2015年 Miami Heat. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
#pragma mark-excise1
        NSLog(@"Hello, World!");
        
#pragma mark-excise2#
        NSLog(@"Program is fun!");
        NSLog(@"Promgram in Objective-C is even more fun!");
#pragma mark-excise3#
        NSLog(@"Testing...\n..1\n...2\n....3\n");
#pragma mark-excise4#
        int sum;
        sum=50+25;
        NSLog(@"The sum of 50 and 25 is %d",sum);
#pragma mark-excise5#
        int value1=50;
        int value2=25;
        int sum1=value1+value2;

        NSLog(@"The sum of %i and %i is %i",value1,value2,sum1);
        
        int i;
        i=1;
       
        NSLog(@"Testing...");
        NSLog(@"..%i\n",i);
        NSLog(@"...%i\n",i+1);
        NSLog(@"....%i\n",i+2);

        
        int a,b,c;
        a=50;
        b=25;
        c=a-b;
        NSLog(@"%iplus %i is %i",a,b,c);
        NSLog(@"I am a handsome boy!so cleva");

        
        
        int sum2;
        //Computer Results//
        sum=25+37-19;
        //DISPLAY RESULTS//
        NSLog(@"The answer is %i",sum2);


    }
    return 0;
}
