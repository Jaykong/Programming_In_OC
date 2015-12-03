//
//  Rectangle.m
//  chap8excise
//
//  Created by 笑郎 on 15/12/1.
//  Copyright © 2015年 Miami Heat. All rights reserved.
//

#import "Rectangle.h"

@implementation Rectangle

{
    XYPoint *origin;

}


@synthesize width, heigh;
-(void)setOrigin:(XYPoint *)pt
{
    if (! origin)
        origin = [[XYPoint alloc]init];
    origin.x = pt.x;
    origin.y = pt.y;
//      origin = pt;
    
}
-(XYPoint *)origin
{
    return origin;
}
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
//-(Rectangle *)translate:(Rectangle *)f
//{
//    Rectangle *result = [[Rectangle alloc]init];
//    
//    result.origin.x = origin.x + f.origin.x;
//    result.origin.y = origin.y + f.origin.y;
//    
//    return result;
//}
-(void)translate:(Rectangle *)f
{
    origin.x = origin.x + f.origin.x;
    origin.y = origin.y + f.origin.y;
}

-(void)print
{
    NSLog(@"origin at (%g , %g)",origin.x , origin.y);
}
-(BOOL)containsPoint:(XYPoint *)aPoint
{
    
    if ((aPoint.x > origin.x && aPoint.x < origin.x + width)
        && (aPoint.y > origin.y && aPoint.y < origin.y + heigh))
        return YES;
    else
        return NO;
}



@end
