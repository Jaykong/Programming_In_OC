//
//  Rectangle.h
//  Chap8_exercise
//
//  Created by Yingbo Liu on 12/3/15.
//  Copyright © 2015 Yingbo Liu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Rectangle:GraphicObject
@property int width, height;
-(int) area;
-(int) perimeter;
@end