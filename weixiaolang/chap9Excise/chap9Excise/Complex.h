//
//  Complex.h
//  chap9Excise
//
//  Created by 笑郎 on 15/12/3.
//  Copyright © 2015年 Miami Heat. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Complex : NSObject
@property double real, imaginary;
-(void)print;
-(void)setReal:(double)r andImaginary: (double)i;
-(id)comAdd: (id)f;
@end
