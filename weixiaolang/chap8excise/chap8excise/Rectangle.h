//
//  Rectangle.h
//  chap8excise
//
//  Created by 笑郎 on 15/12/1.
//  Copyright © 2015年 Miami Heat. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "XYPoint.h"
@class XYPoint;
@interface Rectangle : NSObject

@property double width , heigh;

-(XYPoint *)origin;
-(void)setOrigin : (XYPoint *)pt;

-(void)setWidth:(double)w andHeigh: (double)h;
-(double) area;
-(double) perimeter;

//-(Rectangle *)translate:(Rectangle *)f;
-(void)translate:(Rectangle *)f;

-(void)print;

-(BOOL)containsPoint:(XYPoint *)aPoint;
-(XYPoint *)point;

-(Rectangle *)intersect: (Rectangle *)newRec;

@end
