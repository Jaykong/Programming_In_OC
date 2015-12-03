//
//  Rectangle.m
//  chap9Excise
//
//  Created by 笑郎 on 15/12/3.
//  Copyright © 2015年 Miami Heat. All rights reserved.
//

#import "Rectangle.h"

@implementation Rectangle
@synthesize width,heigh;
-(void)setWidth:(int)w andHeigh:(int)h
{
    width=w;
    heigh=h;
}
-(int)area
{
    return width*heigh;
}

-(int)perimeter
{
    return  (width + heigh)*2;
}


@end
