//
//  Fraction.h
//  chap9Excise
//
//  Created by 笑郎 on 15/12/3.
//  Copyright © 2015年 Miami Heat. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Fraction : NSObject
@property int numerator,denominator;
-(void)print;
-(double)converToNum;
-(void)setTo:(int)n over:(int)d;
-(id)fracAdd:(id)f;
-(void)reduce;

@end
