//
//  Rectangle.m
//  Chap3_3
//
//  Created by kongyunpeng on 11/21/15.
//  Copyright © 2015 kongyunpeng. All rights reserved.
//

#import "Rectangle.h"

@implementation Rectangle{
    int width,height;
}
-(void) setWidth: (int) w {
    width = w;
}
-(void) setHeight: (int) h{
    height = h;
}
-(int) width{
    return width;
}
-(int) height{
    return height;
}
-(int) area{
    return width * height;
}
-(int) perimeter{
    return 2 * (width + height);
}
@end
