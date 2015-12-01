//
//  Circle.m
//  chp8 inherit
//
//  Created by Wenslow on 15/11/26.
//  Copyright © 2015年 Wenslow. All rights reserved.
//

#import "Circle.h"

@implementation Circle

@synthesize radius;

- (double) area//面积
{
    return M_PI * radius * radius;
}

- (double) perimeter//周长
{
    return  2 * M_PI * radius;
}

@end
