//
//  Rectangle.m
//  chap10excise
//
//  Created by 笑郎 on 15/12/3.
//  Copyright © 2015年 Miami Heat. All rights reserved.
//

#import "Rectangle.h"

@implementation Rectangle
@synthesize width,heigh;
-(void)setWidth:(int)w andHeigh:(int)h
{
    [self setWidth:w andHeigh:h];
}
-(id)initWithWidth: (int)w andHeigh: (int)h
{
    id value;
    
    value = [super init];
    if (value) {
        [value setWidth:w];
        [value setHeigh:h];
    }
    return value;
}
-(int)area
{
    return width*heigh;
}

-(int)perimeter
{
    return  (width + heigh)*2;
}
-(void)print
{
    NSLog(@"width = %i ,heigh = %i",width,heigh);
}

@end
