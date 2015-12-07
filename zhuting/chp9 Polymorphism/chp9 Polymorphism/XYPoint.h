//
//  XYPoint.h
//  chp8 inherit
//
//  Created by Wenslow on 15/11/26.
//  Copyright © 2015年 Wenslow. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface XYPoint : NSObject

@property double x, y;

- (void)setX:(double)xVal andY: (double)yVal;
- (void)print;
@end
