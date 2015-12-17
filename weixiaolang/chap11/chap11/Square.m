//
//  Square.m
//  chap11
//
//  Created by 笑郎 on 15/12/17.
//  Copyright © 2015年 Miami Heat. All rights reserved.
//

#import "Square.h"

@implementation Square
{
    Rectangle *rect;
}
-(void)setSide:(int)s
{
    [self setWidth:s andHeigh:s];
}
-(int)side{
    return self.width;
}
-(Square *)initWithSide:(int)s{

    self = [super init];
    if (self) {
        self.side = s;
        rect = [[Rectangle alloc]init];
        [rect setWidth:s  andHeigh:s ];
    }
    return  self;
}
-(int)area{
    return [rect area];
}
-(int)perimeter{
    return rect.perimeter;
}
@end
