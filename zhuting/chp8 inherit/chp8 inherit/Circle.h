//
//  Circle.h
//  chp8 inherit
//
//  Created by Wenslow on 15/11/26.
//  Copyright © 2015年 Wenslow. All rights reserved.
//

#import "GraphicObject.h"

@interface Circle : GraphicObject

@property double radius;

- (double) area;
- (double) perimeter;

@end
