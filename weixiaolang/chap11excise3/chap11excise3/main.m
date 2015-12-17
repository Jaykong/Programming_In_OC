//
//  main.m
//  chap11excise3
//
//  Created by 笑郎 on 15/12/17.
//  Copyright © 2015年 Miami Heat. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "Fraction.h"
#import "NSCompairsonMethods.h"
int main(int argc, char * argv[]) {
    @autoreleasepool {
        
        
        Fraction *f1 = [[Fraction alloc]init];
        Fraction *f2 = [[Fraction alloc]init];
        [f1 setTo:1 over:3];
        [f2 setTo:1 over:4];
        NSLog(@"f1 is less than f2 is: %i",[f1 isLessThan:f2]);
        NSLog(@"f1 is equal to f2 is: %i",[f1 isEqualTO:f2]);
        NSLog(@"f1 is lessThan or equal to f2 is: %i",[f1 isLessThan:f2]);
        NSLog(@"f1 is greater than or equal to f2 is %i",[f1 isGreaterThanOrEqualTo:f2]);
        NSLog(@"f1 is greater than f2 is: %i",[f1 isGreaterThan:f2]);
        NSLog(@"f1 is notEqual to f2 is: %i",[f1 isNotEqualTo:f2]);

        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
