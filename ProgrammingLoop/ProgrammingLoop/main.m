//
//  main.m
//  ProgrammingLoop
//
//  Created by kongyunpeng on 11/22/15.
//  Copyright © 2015 kongyunpeng. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
#pragma mark - farabinumber sum
        int inputNum = 3;
        NSLog(@"the number you input is:");
      //  scanf("%i",&inputNum);
        for (int j = 1; j < 3; ++j) {
       int total = 0;
        for (int i = 1; i <= inputNum; ++i) {
            NSLog(@"after contine");
            total += i;
            continue;
        }
            NSLog(@"total:%i",total);
        }
        
        
        
#pragma mark - gcd great common divisor - while loop
        int u = 20;
        int v = 15;
        int temp;
        while (v != 0) {
            temp = u % v;
             u = v;
            v = temp;
        }
        NSLog(@"gcd is :%u",u);
#pragma mark - while loop - reverse number
        int reverseNum = 1234567;
        int a;
       
       while (reverseNum != 0)
        {
            a = reverseNum % 10;
            
            reverseNum = reverseNum / 10;
            NSLog(@"reverse num is:%i",a);
            
                ;
        }
        
        
        
        
        
    }
    return 0;
}
