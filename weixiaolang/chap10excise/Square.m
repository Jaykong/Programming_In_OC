//
//  Square.m
//  chap10excise
//
//  Created by 笑郎 on 15/12/3.
//  Copyright © 2015年 Miami Heat. All rights reserved.
//

#import "Square.h"

@implementation Square
-(void)setSide:(int)s
{
    [self setWidth:s  andHeigh:s];
}
-(id)initWithSide:(int)s
{
    id value = [super init];
    if (value)
    {
        [value setWidth:s];
        [value setHeigh:s];
    }
    
    return value;
}

-(int)side
{
    return self.width;
}


@end
