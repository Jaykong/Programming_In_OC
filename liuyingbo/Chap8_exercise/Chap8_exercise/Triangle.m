//
//  Triangle.m
//  Chap8_exercise
//
//  Created by Yingbo Liu on 12/3/15.
//  Copyright © 2015 Yingbo Liu. All rights reserved.
//

#import "Triangle.h"

@implementation Triangle

-(void)setSide{
    
    setSide = 23;
}

-(int) perimeter{
    return width + sideLength;
    
    
}
-(double)area{
    
    return width * height *1/2;
}





@end
