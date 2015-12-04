//
//  main.m
//  Complex
//
//  Created by 笑郎 on 15/11/30.
//  Copyright © 2015年 Miami Heat. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Complex.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Complex *XLCom1 = [[Complex alloc] init];
        Complex *XLCom2 = [[Complex alloc] init];
        [XLCom1 setReal:5.3 andImaginary:7];
        [XLCom2 setReal:2.7 andImaginary:4];
        
        Complex * resultComplex ;
        
        [XLCom1 print];
        NSLog(@" + ");
        [XLCom2 print];
        NSLog(@" = ");
        
        resultComplex = [XLCom1 add : XLCom2];
        [resultComplex print];
    }
    return 0;
}
