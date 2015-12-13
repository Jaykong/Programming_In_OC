//
//  Rectangle.m
//  Chp4
//
//  Created by lmz on 15/12/6.
//  Copyright © 2015年 lmz. All rights reserved.
//

#import "Rectangle.h"

@implementation Rectangle

{
    int W,H;
}
-(void)setW:(int)w andH:(int)h
{
    W=w;
    H=h;
}
-(int) W
{
    return W;
}
-(int) H;
{
    return H;
}
-(int) area
{
    return W*H;
}
-(int) perimeter
{
    return (W+H)*2;
}

@end
