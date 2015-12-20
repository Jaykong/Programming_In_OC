//
//  Square.m
//  chp10 Varibles
//
//  Created by Wenslow on 15/12/1.
//  Copyright © 2015年 Wenslow. All rights reserved.
//

#import "Square.h"

@implementation Square

- (void)setSide: (double)s
{
    self.width = s;
    self.height = s;
}

#pragma mark - exercise 5#
- (instancetype) initWithSide:(double)s
{
    self = [super init];
    if (self) {
        self.width = s;
        self.height = s;
    }
    return self;
}

- (instancetype) init
{
    return [self initWithSide:0];
}

- (double) area
{
    return self.width * self.width;
}

- (double) perimeter;
{
    return (self.width) * 4;
}

@end
