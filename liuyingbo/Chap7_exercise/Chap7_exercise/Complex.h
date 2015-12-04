//
//  Complex.h
//  Chap7_exercise
//
//  Created by Yingbo Liu on 12/3/15.
//  Copyright © 2015 Yingbo Liu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Complex:NSObject
-(void) setReal: (double) a;
-(void) setImaginary: (double) b;
-(void) print; // display as a + bi
-(double) real;
-(double) imaginary;

-(Complex *) add: (Complex *) complexNum;
@end
