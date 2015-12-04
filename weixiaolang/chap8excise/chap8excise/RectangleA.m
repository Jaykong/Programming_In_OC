//
//  RectangleA.m
//  chap8excise
//
//  Created by 笑郎 on 15/12/1.
//  Copyright © 2015年 Miami Heat. All rights reserved.
//

#import "RectangleA.h"

@implementation RectangleA
@synthesize width, heigh;
-(void)setWidth:(double)w andHeigh:(double)h
{
    width = w;
    heigh = h;
}
-(double)area
{
    return heigh * width;
}
-(double)perimeter
{
    return (width + heigh) * 2;
}


@end
