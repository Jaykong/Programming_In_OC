//
//  Square.h
//  chp10 Varibles
//
//  Created by Wenslow on 15/12/1.
//  Copyright © 2015年 Wenslow. All rights reserved.
//

#import "Rectangle.h"

@interface Square : Rectangle

- (void)setSide: (double)s;

#pragma mark - exercise 5#
- (instancetype) initWithSide:(double)s;
- (double) area;
- (double) perimeter;
- (instancetype) init;

@end
