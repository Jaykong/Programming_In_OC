//
//  Triangle.h
//  chap8excise
//
//  Created by 笑郎 on 15/12/1.
//  Copyright © 2015年 Miami Heat. All rights reserved.
//

#import "GraphicObject.h"

@interface Triangle : GraphicObject
@property double side1 ,side2 ;
-(void)setSide1:(double)s1 andSide2: (double) s2;
-(double)area;
-(double)perimeter;

@end
