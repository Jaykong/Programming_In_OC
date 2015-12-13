//
//  Triangle.h
//  Chap8_exercise
//
//  Created by Yingbo Liu on 12/3/15.
//  Copyright © 2015 Yingbo Liu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Rectangle.h"
@interface Triangle : GraphicObject
｛
    int sideLength;
｝


-(void) setSide;
-(int) perimeter;
-(double)area;


@end
