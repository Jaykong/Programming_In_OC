//
//  Rectangle.h
//  Chap3_3
//
//  Created by kongyunpeng on 11/21/15.
//  Copyright © 2015 kongyunpeng. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Rectangle : NSObject

-(void) setWidth: (int) w;
-(void) setHeight: (int) h;
-(int) width;
-(int) height;
-(int) area;
-(int) perimeter;

@end
