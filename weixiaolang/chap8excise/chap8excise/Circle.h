//
//  Circle.h
//  chap8excise
//
//  Created by 笑郎 on 15/12/1.
//  Copyright © 2015年 Miami Heat. All rights reserved.
//

#import "GraphicObject.h"

@interface Circle : GraphicObject
@property double circleside , pa;
-(void)setCircleside:(double)r andPa:(double)p;
-(double)area;
-(double)perimeter;
@end
