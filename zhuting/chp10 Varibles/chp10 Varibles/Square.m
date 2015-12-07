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

#pragma mark - exercise 2#
- (id) initWithSide:(double)s
{
    self = [super init];
    if (self) {
        [self setSide:s];
    }
    return self;
    
}
@end
