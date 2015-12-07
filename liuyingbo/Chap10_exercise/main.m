//
//  main.m
//  Chap10_exercise
//
//  Created by Yingbo Liu on 12/6/15.
//  Copyright © 2015 Yingbo Liu. All rights reserved.
//

#pragma mark - exercise 1#

#import <Foundation/Foundation.h>
@class XYPoint;
@interface Rectangle: NSObject
@property int width, height;
-(XYPoint *) origin;
-(void) setOrigin: (XYPoint *) pt;

-(id) setWidth: (int) w andHeight: (int) h;

-(int) area;
-(int) perimeter;
@end



@implementation Rectangle
-(instanceType) setWidth: (int) w andHeight: (int) h{
    
    self = [super int];
    
    
    if (self)
        [self setWidth:w andHeight:h ];
        
    return self;
}

@end




#pragma mark - exercise 2#

@interface Rectangle, NSObject


-(id) initWithSide:(int) side;

@end


@implementation Rectangle

-(id) initWithSide:(int) side{
    
    self = [super initWithSide];
    if (self){
        
        
        [self initWithSide];
        
    }
    return self;
    
}

@end

#pragma mark - exercise 3#
//How can you retrieve the value of the counter
//We could have a local static variable that would be set to only
//once when the program started. It would retain its value through
//successive invocations of the method.Everytime the method is
//called, the counter will increment by one


#pragma mark - exercise 4#


enum Day { Sunday, Monday, Tuesday, Wednesday, Thrusday, Friday, Saturday}

typedef Int Day;

Day number;




#pragma mark - exercise 5#


enum FractionObj {f1 = [[Fraction alloc] init],f2 = [[Fraction alloc] init]};
typedef NSString FractionObj;

FractionObj newFractions；



#pragma mark - exercise 6#

float f = 1.00;
short int i = 100;
long int l = 500L;
double d = 15.00;

f + i ＝ 101.00000  float
l / d = 33.3333 float
l + f = 501.00000 float
l * i = 50000  long
f / 2 =0.5000000 float
i / (d + f) = 6.25000 float
l / (i * 2.0) ＝0.50000 float
l + i / (double) l = 4136 double


