//
//  Complex.h
//  Chap3_3
//
//  Created by kongyunpeng on 11/21/15.
//  Copyright © 2015 kongyunpeng. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Complex : NSObject
-(void) setReal: (double) a;
-(void) setImaginary: (double) b;
-(void) print;// a + bi
-(double) real;
-(double) imaginary;
@end
