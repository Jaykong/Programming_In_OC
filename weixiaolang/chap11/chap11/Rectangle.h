//
//  Rectangle.h
//  chap11
//
//  Created by 笑郎 on 15/12/17.
//  Copyright © 2015年 Miami Heat. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Rectangle : NSObject
@property int width,heigh;

-(void)setWidth:(int)w andHeigh:(int)h;

-(int)area;
-(int )perimeter;

@end
