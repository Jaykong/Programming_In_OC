//
//  XYPoint.m
//  chap9Excise
//
//  Created by 笑郎 on 15/12/3.
//  Copyright © 2015年 Miami Heat. All rights reserved.
//

#import "XYPoint.h"

@implementation XYPoint
@synthesize x, y;
-(void)setX:(int)xVal andY:(int)yVal
{
    x = xVal;
    y = yVal;
}
-(void)print
{
    NSLog(@"The Point: (%i , %i)", x, y);
}

@end
