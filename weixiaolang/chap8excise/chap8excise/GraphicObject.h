//
//  GraphicObject.h
//  chap8excise
//
//  Created by 笑郎 on 15/12/1.
//  Copyright © 2015年 Miami Heat. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GraphicObject : NSObject
@property int fillColor, lineColor;
-(void)setFillColor:(int)f andLinecolor: (int)l;
-(BOOL)filled;

@end
