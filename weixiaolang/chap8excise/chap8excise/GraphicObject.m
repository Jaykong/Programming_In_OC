//
//  GraphicObject.m
//  chap8excise
//
//  Created by 笑郎 on 15/12/1.
//  Copyright © 2015年 Miami Heat. All rights reserved.
//

#import "GraphicObject.h"

@implementation GraphicObject
{
     BOOL filled;
}
@synthesize fillColor, lineColor;
-(void)setFillColor:(int)f andLinecolor:(int)l
{
    fillColor = f;
    lineColor = l;
}
-(BOOL)filled
{
    return filled;
}

@end
