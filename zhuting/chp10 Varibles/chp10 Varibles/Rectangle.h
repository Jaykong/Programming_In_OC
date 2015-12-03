//
//  Rectangle.h
//  chp8 inherit
//
//  Created by Wenslow on 15/11/26.
//  Copyright © 2015年 Wenslow. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "XYPoint.h"
#import "GraphicObject.h"
@interface Rectangle : GraphicObject

@property double width, height;

- (XYPoint *) origin;
- (void)setX_Origin:(XYPoint *)pt;
- (XYPoint *)x_Origin;
- (void)setY_Origin:(XYPoint *)pt;
- (XYPoint *)y_Origin;
- (void)setX_y_Point:(XYPoint *)pt;
- (XYPoint *)x_y_Point;
- (void) setOrigin: (XYPoint *)pt;
- (double) area;
- (double) perimeter;
- (void) setWidth:(double)w andHeight: (double)h;

#pragma mark - exercise 1#
- (id)initWithWidth: (double)w andHeight: (double)h;

- (void) translate: (XYPoint *)pt;//原点变换

- (BOOL) containsPoint: (XYPoint *)aPoint;


- (Rectangle *)intersect: (Rectangle *)pt;


- (void)draw;
@end
