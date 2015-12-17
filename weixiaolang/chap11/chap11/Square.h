//
//  Square.h
//  chap11
//
//  Created by 笑郎 on 15/12/17.
//  Copyright © 2015年 Miami Heat. All rights reserved.
//

#import "Rectangle.h"

@interface Square : Rectangle
-(Square *)initWithSide:(int)s;
-(int)area;
-(int)perimeter;
-(void)setSide:(int)s;
-(int)side;
@end
