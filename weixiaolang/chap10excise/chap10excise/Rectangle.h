//
//  Rectangle.h
//  chap10excise
//
//  Created by 笑郎 on 15/12/3.
//  Copyright © 2015年 Miami Heat. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Rectangle : NSObject
@property int width,heigh;

-(void)setWidth:(int)w andHeigh:(int)h;
-(id)initWithWidth: (int)w andHeigh: (int)h;
-(int)area;
-(int )perimeter;
-(void)print;


@end
