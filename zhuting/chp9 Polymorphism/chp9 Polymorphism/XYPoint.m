//
//  XYPoint.m
//  chp8 inherit
//
//  Created by Wenslow on 15/11/26.
//  Copyright © 2015年 Wenslow. All rights reserved.
//

#import "XYPoint.h"

@implementation XYPoint

@synthesize x, y;

- (void)setX:(double)xVal andY: (double)yVal
{
    x = xVal;
    y = yVal;
}

- (void)print
{
    NSLog(@"(%g, %g)", self.x, self.y);
}

@end
