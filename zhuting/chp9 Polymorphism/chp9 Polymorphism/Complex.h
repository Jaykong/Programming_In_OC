//
//  Complex.h
//  chp7 class
//
//  Created by Wenslow on 15/11/26.
//  Copyright © 2015年 Wenslow. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Complex : NSObject

@property double real, imaginary;


- (void)print;
- (void)setReal:(double)a andImaginary:(double)b;
- (id) add111: (id)complexNum;

@end
