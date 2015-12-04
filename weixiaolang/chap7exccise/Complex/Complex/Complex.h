//
//  Complex.h
//  Complex
//
//  Created by 笑郎 on 15/11/30.
//  Copyright © 2015年 Miami Heat. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Complex : NSObject
@property double real,imaginary;
-(void)print;
-(void)setReal : (double)a andImaginary : (double)b;
-(Complex *) add: (Complex *) complexNum;

@end
