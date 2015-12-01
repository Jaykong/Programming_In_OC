//
//  GraphicObject.h
//  chp8 inherit
//
//  Created by Wenslow on 15/11/26.
//  Copyright © 2015年 Wenslow. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GraphicObject : NSObject

@property int fillColor, lineColor;
@property BOOL filled;

- (void)setFillColor:(int)FC lineColor:(int)LC Filled:(BOOL)F;

@end
