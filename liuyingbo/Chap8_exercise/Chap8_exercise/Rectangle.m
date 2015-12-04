//
//  Rectangle.m
//  Chap8_exercise
//
//  Created by Yingbo Liu on 12/3/15.
//  Copyright © 2015 Yingbo Liu. All rights reserved.
//

#import "Rectangle.h"
#import "Rectangle.h"
@implementation Rectangle
@synthesize width, height;
-(void) setWidth: (int) w andHeight: (int) h
{
    width = w;
    height = h;
}
-(int) area
{
    return width * height;
}
-(int) perimeter
{
    return (width + height) * 2;
}
@end