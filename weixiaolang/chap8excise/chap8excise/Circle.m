//
//  Circle.m
//  chap8excise
//
//  Created by 笑郎 on 15/12/1.
//  Copyright © 2015年 Miami Heat. All rights reserved.
//

#import "Circle.h"

@implementation Circle
@synthesize circleside, pa;
-(void)setCircleside:(double)r andPa:(double)p
{
    circleside = r;
    pa = p;
}
-(double)area
{
    return pa * (circleside * circleside);
}
-(double)perimeter
{
    return 2 * pa * circleside;
}
@end
