//
//  Triangle.h
//  chp8 inherit
//
//  Created by Wenslow on 15/11/26.
//  Copyright © 2015年 Wenslow. All rights reserved.
//

#import "GraphicObject.h"

@interface Triangle : GraphicObject

@property double a, b, c;//三角形各变长

- (double) area;
- (double) perimeter;

@end
