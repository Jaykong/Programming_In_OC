//
//  main.m
//  Chap8_exercise
//
//  Created by Yingbo Liu on 12/3/15.
//  Copyright © 2015 Yingbo Liu. All rights reserved.
//

#import <Foundation/Foundation.h>

#pragma mark - exercise 1#
//Add a new class called ClassC , which is a subclass of ClassB , to Program 8.1 . Make an
//initVar method that sets the value of its instance variable x to 300 . Write a test routine
//that declares ClassA , ClassB , and ClassC objects and invokes their corresponding
//initVar methods.

@interface ClassC : ClassB
{
    int x;
}


-(void)initVar;

@end


@implementation ClassC

-(void)initVar{
    
    
    x = 300;
}
@end

#pragma mark - exercise 2#

#import <Foundation/Foundation.h>
@interface XYPoint: NSObject
@property float x, y;
-(void) setX: (float) xVal andY: (float) yVal;
@end


@implementation XYPoint
@synthesize x, y;
-(void) setX: (float) xVal andY: (float) yVal
{
    x = xVal;
    y = yVal;
}
@end


#import <Foundation/Foundation.h>
@class XYPoint;
@interface Rectangle: NSObject
@property float width, height;
-(XYPoint *) origin;
-(void) setOrigin: (XYPoint *) pt;
-(void) setWidth: (float) w andHeight: (float) h;
-(float) area;
-(float) perimeter;
@end



#import "Rectangle.h"
@implementation Rectangle
{
    XYPoint *origin;
}
@synthesize width, height;
-(void) setWidth: (float) w andHeight: (float) h
{
    width = w;
    
    height = h;
}
–(void) setOrigin: (XYPoint *) pt
{
    origin = pt;
}
–(float) area
{
    return width * height;
}
–(float) perimeter
{
    return (width + height) * 2;
}
–(XYPoint *) origin
{
    return orig;
}

@end



#pragma mark - exercise 3#

#import <Foundation/Foundation.h>
// ClassA declaration and definition
@interface ClassA: NSObject
{
    int x;
}
-(void) initVar;
@end
@implementation ClassA
-(void) initVar
{
    x = 100;
}
@end
// Class B declaration and definition
@interface ClassB : ClassA
-(void) printVar;
@end
@implementation ClassB
-(void) printVar
{
    NSLog (@"x = %i", x);
}
@end

@interface ClassB2: ClassA
-(void) printVar;
@end
@implementation ClassB
-(void) printVar
{
    NSLog (@"x = %i", x);
}
@end



int main (int argc, char * argv[])
{
    @autoreleasepool {
        ClassB *b = [[ClassB alloc] init];
        [b initVar]; // will use inherited method[b printVar]; // reveal value of x;
    }
    return 0;
}

//the relationship between ClassB and classB2 is that they
//are at the same level in the inheritance tree. they inherit the same methods.


//ClassA inherits from NSobject; ClassB and ClassB2 inherit from
//ClassA and further inherit the methods in NSObject

//The superclass of ClassB is ClassA

//The superclass of classB2 is classA

//A class can only have one superclass, and it can slo have only//one superclass.





#pragma mark - exercise 4#

-(XYPoint *) translate:(XYPoint *) point{
    XYPoint *newPoint = [XYPoint allco]init];
    Rectangle *newRect = [Rectangle alloc]init];
    newPoint = point;
    newRect.setOrigin = newPoint;
    
}

#pragma mark - exercise 5#

#import <Foundation/Foundation.h>

@interface GraphicObject : NSObject
{
    int fillColor; // 32-bit color
    BOOL filled; // Is the object filled?
    int lineColor; // 32-bit line color
    
    
}

-(void) initValue;

-(int) retrieveFillColor;
-(BOOL) retrieveFilled;
-(int) retrieveLineColor;

@end


@implementation GraphicObject


-(void) initValue{
    fillColor = 23;
    filled = false;
    lineColor = 3;
    
    
}

-(int) retrieveFillColor{
    
    return fillColor;
}
-(BOOL) retrieveFilled{
    
    return filled;
}
-(int) retrieveLineColor{
    
    return lineColor;
}

@end

#pragma mark - exercise 6#
#import "Rectangle.h"

-(BOOL) containsPoint: (XYPoint *) aPoint{
    
    Rectangle *newRect = [[Rectangle alloc]init];
    
    if (newRect.X>aPoint.X &&newRect.Y > aPoint.Y){
        
        return true;
    }
    else
        return false;
}



#pragma mark - exercise 7#

-(Rectangle＊)intersect:(Rectangle *) rect{
    int width, height;
    Rectangle *rec1 = [[Rectangle alloc]init];
    Rectangle *rec2 = [[Rectangle alloc]init];
    [rec1 setWidth:250 andHeight:75];
    [rec2 setWidth:100 andHeight:180];
    
    width = (rec2.origin.X + rec2.width) - (rec1.origin.X + rec1.width);
    
    height = (rec2.origin.Y + rec2.height)- (rec1.origin.Y + rec1.height);
    
    
    Rectangle *recArea= [[Rectangle alloc]init];
    
    recArea = width * height;
    
    return recArea;
    
    
}


#pragma mark - exercise 8#

－(void)draw:(Reactangle*)rec{
    
    Rectangle *newRec = [[Rectangle alloc]init];
    printf("-"*[newRec.width]);
    printf("|                |\n"*[newRec.height]);
    printf("-"*[newRec.width]);
    
}


//Rectangle *myRect = [[Rectangle alloc] init];
//[myRect setWidth: 10 andHeight: 3];
//[myRect draw];



int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
    }
    return 0;
}
