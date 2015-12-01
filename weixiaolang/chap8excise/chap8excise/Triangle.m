
//  Triangle.m
//  chap8excise
//
//  Created by 笑郎 on 15/12/1.
//  Copyright © 2015年 Miami Heat. All rights reserved.
//

#import "Triangle.h"

@implementation Triangle
@synthesize side1 , side2;
-(void)setSide1:(double)s1 andSide2:(double)s2
{
    side1 = s1;
    side2 = s2;
}
-(double)area
{
    return side1 * side2 / 2;
}
-(double)perimeter
{
    return side2 + side1 +(side1 * side1 + side2 *side2);
}

@end
