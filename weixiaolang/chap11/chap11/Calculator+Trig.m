//
//  Calculator+Trig.m
//  chap11
//
//  Created by 笑郎 on 15/12/17.
//  Copyright © 2015年 Miami Heat. All rights reserved.
//

#import "Calculator+Trig.h"

@implementation Calculator (Trig)
-(double)sin{
    double result;
    result = sin(self.accumulator);
    NSLog(@"sin(acculmulator) = %f",result);
    return result;
}
-(double)cos{
    double result;
    result = cos(self.accumulator);
    NSLog(@"cos(acculmulator) = %f",result);

    return result;
}
-(double)tan{
    double result;
    result = tan(self.accumulator);
    NSLog(@"tan(acculmulator) = %f",result);

    return result;
}

@end
