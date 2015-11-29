//
//  Complex.h
//  chp7 class
//
//  Created by Wenslow on 15/11/26.
//  Copyright © 2015年 Wenslow. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Complex : NSObject
- (void)setReal: (double)a;
- (void)setImaginary: (double)b;
- (void)print;
- (double)real;
- (double)imaginary;
- (Complex *) add: (Complex *)complexNum;

@end
