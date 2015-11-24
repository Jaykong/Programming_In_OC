//
//  main.m
//  Chap3_exercise
//
//  Created by Yingbo Liu on 11/24/15.
//  Copyright © 2015 Yingbo Liu. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
    }
    
    
    
    
#pragma mark - exercise 1#
    
    //Int = 8; //Use of undeclared identifier 'Int', cannot use reserved keywords
    
    int playNextsong = 3;
    NSLog(@"float is %i", playNextsong);
    
    //6_05 = playNextsong; cannot begin variable name with a number
    
    int _calloc = 3;  // valid varible name with underscore to begin
     NSLog(@"float is %i", _calloc);
    
    int Xx = 3;
    NSLog(@"digit is %i", Xx);
    
    float alphaBetaRoutine = 4.0;
    NSLog(@"digit is %f", alphaBetaRoutine);
    
    char clearScreen = "a";
    NSLog(@"digit is %c", clearScreen);
    
    double _1312 = 13.12;
    NSLog(@"float is %a", _1312);
    
    short int z = 1;
    NSLog(@"float is %hi", z);
    
    long int ReInitialize = 12132;
    NSLog(@"float is %li", ReInitialize);
    
    long long int _ = 2323;
    NSLog(@"float is %lli", _);
    
    //A$ invalid, cannot contain illegal characters
    
    
#pragma mark - exercise 2#
//the class is Laptop and the parent class is computers.
@interface Laptop: Computer
    
+(void) display;
+(void) playMusic;
-(int) addSum: (int) n;
-(float) calculateFloat: (float) flo;
-(void) setPassword;
    
@end

    
#pragma mark - exercise 3#
    
int main(int argc, char * argv[])
{
    @autoreleasepool {
      
        Laptop *myLaptop = {[[Laptop alloc] init];
       // myLaptop = [Laptop init];
        [myLaptop display];
        [myLaptop playMusic];
        [myLaptop addSum];
        [myLaptop caculateFloat];
        [myLaptop setpassword];
        
    }
    
    return 0;
    
}
    

    
    
#pragma mark - exercise 4#
// there will be overlapping in operating all three.
//we could create a parent class called transportation, and then define methods
//that all three tools share. We could have a method that moves each of them;
//we could have a addFuel method that adds fuel; we could also have a direction method
//that changesdirections
    

    
#pragma mark - exercise 5#

#import <Foundation/Foundation.h>
    
@interface Vehicle
    
-(void) prep;
-(void) getGas;
-(void) service;
@end
    
    
@implementation Vehicle
{
    //member declarations
    
    -(void) prep
    {
        
    }
    -(void) getGas;
    {
        
    }
    -(void) service
    {
        
    }
    
    
    
    
}
@end
 
int main(int argc, char * argv[])
{
    @autoreleasepool {
        
        Vehicle *myVehicle = [Vehicle new];
        
        [myVehicle prep];
        
        [myVehicle getGas];
        
        [myVehicle service];
        
        
        
    }

    return 0;
    
    
}

    
#pragma mark - exercise 6#
#The disadvantage of using procedural programming in C is it does 
#not make good use of the same methods. Some transportation means share
#the same methods. Adding another way would be easier when taking advantage
#of the existing methods.

#The strength of using procedural programming is that the methods are designed 
#specifically for that mean of transportation. People will have a better understanding 
#of the procedures for the programs.
    
    
    
    
    
    
#pragma mark - exercise 7#
    
    
@interface XYpoint

- (void) setX: (int) x;
-(void) setY: (int) y;
-(int) getX;
- (int) getY;
    
    
@implementation XYpoint
    
{
    int X,Y;
}
    
    
- (void) setX: (int) n
{
    return X = n;
}
 
    
- (void) setY: (int) m
{
    return Y = m;
}
    

-(int) getX
{
    return X;
}
    
    
-(int) getY
{
    return Y;
}
    
@end
    
int main (int argc, char 8 argv[])
{
    @autoreleasepool {
        XYpoint *newPoint = [XYpoint new]
        
        [newPoint setX:3];
        [newPoint setY:6];
        
        
        NSLog(@"The coordinates for the newpoint is (%i, %i, [newPoint getX], [newPoint getY])
        
        
        
    }
    ,uyhghhh
    
    return 0;
}
