//
//  main.m
//  chp7_moreOnClasses
//
//  Created by trainer on 11/23/15.
//  Copyright © 2015 trainer. All rights reserved.
//

#import <Foundation/Foundation.h>
-(void)reduce;

-(void)reduce {
    int u = 20;
    int v = 15;
    int temp ;
    int gcd;
    while (v!= 0) {
        temp = u;
        u = v;
        v = u % v;
    }
    gcd = u;
    NSLog(@"gcd is :%i",gcd);
}



int main(int argc, const char * argv[]) {
    @autoreleasepool {
#pragma mark - local variable - gcd

    return 0;
}
}
