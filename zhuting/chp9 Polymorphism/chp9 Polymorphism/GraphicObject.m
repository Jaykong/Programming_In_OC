//
//  GraphicObject.m
//  chp8 inherit
//
//  Created by Wenslow on 15/11/26.
//  Copyright © 2015年 Wenslow. All rights reserved.
//

#import "GraphicObject.h"

@implementation GraphicObject

@synthesize fillColor, lineColor, filled;

- (void)setFillColor:(int)FC lineColor:(int)LC Filled:(BOOL)F
{
    filled = FC;
    lineColor = LC;
    filled = F;
}
@end
