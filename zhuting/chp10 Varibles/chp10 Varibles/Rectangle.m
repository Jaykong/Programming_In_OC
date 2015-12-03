//
//  Rectangle.m
//  chp8 inherit
//
//  Created by Wenslow on 15/11/26.
//  Copyright © 2015年 Wenslow. All rights reserved.
//

#import "Rectangle.h"

@implementation Rectangle
{
    XYPoint *origin;//原点
    XYPoint *x_Origin;//（x，0）
    XYPoint *y_Origin;//（0，x）
    XYPoint *x_y_Point;//（x，y）
}
@synthesize width, height;

- (double) area
{
    return width * height;
}
- (double) perimeter
{
    return (width + height) * 2;
}

- (void) setWidth:(double)w andHeight: (double)h
{
    width = w;
    height = h;
}

- (void)setOrigin:(XYPoint *)pt
{
    origin = pt;
}

- (XYPoint *)origin
{
    return origin;
}

- (void)setX_Origin:(XYPoint *)pt
{
    x_Origin = pt;
}

- (XYPoint *)x_Origin
{
    return x_Origin;
}
- (void)setY_Origin:(XYPoint *)pt
{
    y_Origin = pt;
}

- (XYPoint *)y_Origin
{
    return origin;
}
- (void)setX_y_Point:(XYPoint *)pt
{
    x_y_Point = pt;
}

- (XYPoint *)x_y_Point
{
    return x_y_Point;
}
#pragma mark - exercise 4#
- (void) translate: (XYPoint *)pt//原点变换
{
    self.origin.x = pt.x;
    self.origin.y = pt.y;
}


- (BOOL) containsPoint: (XYPoint *)aPoint
{
    if (aPoint.x < (origin.x + self.width) && aPoint.y < (origin.y + self.height)) {
        return YES;
    }else{
        return NO;
    }
}


- (Rectangle *)intersect: (Rectangle *)pt
{
    Rectangle *containRect = [[Rectangle alloc]init];
    
    //定义传入矩形的四个角的坐标
    pt.x_Origin.x = pt.origin.x + width;
    pt.x_Origin.y = pt.origin.y;
    pt.y_Origin.x = pt.origin.x;
    pt.y_Origin.y = pt.origin.y + height;
    pt.x_y_Point.x = pt.origin.x + width;
    pt.x_y_Point.y = pt.origin.y + height;
    
    if ([self containsPoint:pt.origin]) {//原点在矩形内部
        containRect.origin = pt.origin;//重叠矩形的原点就是pt的原点
        containRect.width = pt.width - self.width;//其高和宽的计算
        containRect.height = pt.height - self.height;
    }else if ([self containsPoint:pt.x_Origin]){//（x，0）点在矩形内
        containRect.origin.x = self.origin.x;
        containRect.origin.y = pt.origin.y;
        containRect.width = pt.origin.x + pt.width - self.origin.x;
        containRect.height = self.height + self.origin.y - pt.origin.y;
    }else if ([self containsPoint:pt.y_Origin]){//（0，y）点在矩形内
        containRect.origin.x = pt.origin.x;
        containRect.origin.y = self.origin.y;
        containRect.width = pt.width + pt.origin.x - self.origin.x;
        containRect.height = pt.height + pt.origin.y - self.origin.y;
    }else if ([self containsPoint:pt.x_y_Point]){//（x，y）点在矩形内
        containRect.origin = self.origin;
        containRect.width = pt.width + pt.origin.x - self.origin.x;
        containRect.height = pt.height + pt.origin.y - self.origin.y;
    }else{//没有重叠
        containRect.origin.x = 0;
        containRect.origin.y = 0;
    }
    return containRect;
}


- (void)draw
{
    for (int i = 1; i <= self.width; i++) {
        printf("-");
    }
    printf("\n");
    for (int i = 1; i <= self.height; i++) {
        printf("|");
        for (int n = 1; n <= self.height - 2; n++) {
            printf(" ");
        }
        printf("|\n");
    }
    for (int i = 1; i <= self.width; i++) {
        printf("-");
    }
    printf("\n");
}

#pragma mark - exercise 1#
- (id)initWithWidth: (double)w andHeight: (double)h
{
    self = [super init];
    if (self) {
        [self setWidth:w andHeight:h];
    }
    return self;
}

@end
