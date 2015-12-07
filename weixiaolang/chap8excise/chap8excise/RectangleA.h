//
//  RectangleA.h
//  chap8excise
//
//  Created by 笑郎 on 15/12/1.
//  Copyright © 2015年 Miami Heat. All rights reserved.
//

#import "GraphicObject.h"

@interface RectangleA : GraphicObject
@property double width , heigh;


-(void)setWidth:(double)w andHeigh: (double)h;
-(double) area;
-(double) perimeter;

@end
