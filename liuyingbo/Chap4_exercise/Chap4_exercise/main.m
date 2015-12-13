//
//  main.m
//  Chap4_exercise
//
//  Created by Yingbo Liu on 11/29/15.
//  Copyright © 2015 Yingbo Liu. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        

#pragma mark - exercise 1#
valid constants
        
//123.456
//123L
//0L    -597.25
//123.5e2   .0001    +12
//98.6F     98.7U
//0996      -12E-12
//1234uL    1.2Fe-7   15,000
//1.234L    197u      100U
//+123
        
        
        
#pragma mark - exercise 2#
        float Fah = 27, Celsius;
        Celsius = (Fah -32) /1.8
        
        
        
#pragma mark - exercise 3#

//The output from the following program is  d = d
        
        
#pragma mark - exercise 4#
#import <Foundation/Foundation.h>
        
int main(int argc, const char * argv[]) {
        @autoreleasepool {
            float x = 2.55;
            float result = 3*x*x*x - 5*x*x +6;
            NSLog(@"The result is %fl", result);
                
        }
        return 0;
            
}
 result)
#pragma mark - exercise 5#
long double number = (3.31 x 10^-8 + 2.01 x 10^-7 ) / (7.16 x 10^16 + 2.01 x 10^-8 );
NSlog(@"The number is %e", double);
        
#pragma mark - exercise 6#
        
        
        @interface Complex:NSObject
        -(void) setReal: (double) a;
        -(void) setImaginary: (double) b;
        -(void) print; // display as a + bi
        -(double) real;
        -(double) imaginary;
        @end
        
        @implementation Complext
        {
            double real imaginary;
        
        }

        －(void) setReal: (double) a{
            
            
            real = a;
        }
        －(void) setImaginary: (double) b{
            
            imaginary = b;
        }
        －(void) print{// display as a + bi
            
            
            NSlog(@"%d + %di", a, b);
        }
        (double) real{
            
            return real;
            
            
        }
        -(double) imaginary{
            
            return imaginary;
            
        }
        int main (int argc, char *argv[]){
            
            @autoreleasepool {
                Complex *newComplex = [[Complext alloc]init];
                
                newComplex.setReal = 3;
                newComplex.setImaginary = 5;
                
                newComplex.print;
            }
            
            
        }
#pragma mark - exercise 7#
@interface Rectangle: NSObject
-(void) setWidth: (int) w;
-(void) setHeight: (int) h;
-(int) width;
-(int) height;
-(int) area;
-(int) perimeter;
@end
        
@implementation Rectangle
｛
        int width, height;
        
        
｝
－(void) setWidth: (int) w｛
        
        width = w;
｝
－(void) setHeight: (int) h｛
        height = h;
        
－(int) width｛
        return width;
        
        
        ｝
－(int) height｛
        
        return height;
        ｝
－(int) area｛
    
        
        return width*height;
    }
    
－(int) perimeter｛
    
    return 2*(width + height);
        ｝
        
        
    int main (int argc, char *argv[]){
        
        @autoreleasepool {
            Rectangle *newRect = [[Rectangle alloc]init];
            
            newRect.setWidth = 3;
            newRect.setHeight = 5;
            
            
            NSLog(@"The area is %i", [newRect area]);
            NSLog(@"The parimeter is %i", [newRect perimeter]);
            
            
            
            
        }
        
        
    }
    
    
    

    
#pragma mark - exercise 8#
    
    // Implement a Calculator class
    #import <Foundation/Foundation.h>
    @interface Calculator: NSObject
    // accumulator methods
    -(void) setAccumulator: (double) value;
    -(void) clear;
    -(double) accumulator;
    // arithmetic methods
    -(void) add: (double) value;
    -(void) subtract: (double) value;
    -(void) multiply: (double) value;
    -(void) divide: (double) value;
    @end
    @implementation Calculator
    {
        double accumulator;
    }
    -(void) setAccumulator: (double) value
    {
        accumulator = value;
    }
    -(void) clear
    {
        accumulator = 0;
    }
    -(double) accumulator
    {
        return accumulator;
    }
    -(void) add: (double) value
    {
        accumulator += value;
        return accumulator;
    }
    -(void) subtract: (double) value
    {
        accumulator -= value;
        return accumulator;
    }
    -(void) multiply: (double) value
    {
        accumulator *= value;
        return accumulator;
    }
    -(void) divide: (double) value
    {
        accumulator /= value;
        return accumulator;
    }
    @end
    int main (int argc, char * argv[])
    {
        @autoreleasepool {
            Calculator *deskCalc = [[Calculator alloc] init];
            [deskCalc setAccumulator: 100.0];
            [deskCalc add: 200.];
            [deskCalc divide: 15.0];
            [deskCalc subtract: 10.0];
            [deskCalc multiply: 5];
            NSLog (@"The result is %g",
            
            }
            
}
        
#pragma mark - exercise 9#
        

                   // Implement a Calculator class
                   #import <Foundation/Foundation.h>
                   @interface Calculator: NSObject
                   // accumulator methods
                   -(void) setAccumulator: (double) value;
                   -(void) clear;
                   -(double) accumulator;
                   // arithmetic methods
                   -(void) add: (double) value;
                   -(void) subtract: (double) value;
                   -(void) multiply: (double) value;
                   -(void) divide: (double) value;
                   
                   -(double) changeSign; // change sign of accumulator
                   -(double) reciprocal; // 1/accumulator
                   -(double) xSquared; // accumulator squared
                   
                   @end
                   @implementation Calculator
                   {
                       double accumulator;
                   }
                   -(void) setAccumulator: (double) value
                   {
                       accumulator = value;
                   }
                   -(void) clear
                   {
                       accumulator = 0;
                   }
                   -(double) accumulator
                   {
                       return accumulator;
                   }
                   -(void) add: (double) value
                   {
                       accumulator += value;
                       return accumulator;
                   }
                   -(void) subtract: (double) value
                   {
                       accumulator -= value;
                       return accumulator;
                   }
                   -(void) multiply: (double) value
                   {
                       accumulator *= value;
                       return accumulator;
                   }
                   -(void) divide: (double) value
                   {
                       accumulator /= value;
                       return accumulator;
                   }
                   
                   
                   -(double) changeSign ｛
                   return accumulator  = -accumulator;
                   ｝
                   -(double) reciprocal;{
                   
                   return 1/accumulator;
                   }
                   
                   -(double) xSquared;{
                       return accumulator *accumulator;
                   
                   }
                   @end
                   int main (int argc, char * argv[])
                   {
                       @autoreleasepool {
                           Calculator *deskCalc = [[Calculator alloc] init];
                           [deskCalc setAccumulator: 100.0];
                           [deskCalc add: 200.];
                           [deskCalc divide: 15.0];
                           [deskCalc subtract: 10.0];
                           [deskCalc multiply: 5];
                           NSLog (@"The result is %g",
                           
                           }
                           
                           }

        
#pragma mark - exercise 10#
        
#import <Foundation/Foundation.h>
@interface Calculator: NSObject
                                  // accumulator methods
-(void) setAccumulator: (double) value;
-(void) clear;
-(double) accumulator;
                                  // arithmetic methods
-(void) add: (double) value;
-(void) subtract: (double) value;
-(void) multiply: (double) value;
-(void) divide: (double) value;
                                  
  
-(double) memoryClear; // clear memory
-(double) memoryStore; // set memory to accumulator
-(double) memoryRecall; // set accumulator to memory
-(double) memoryAdd: (double) value; // add value into memory
-(double) memorySubtract: (double) value; // subtract value from memory
                                  
                                  
                                  
@end
                                  
                                  
                                  
@implementation Calculator
{
double accumulator;
}
-(void) setAccumulator: (double) value
{
accumulator = value;
}
        
-(void) clear
{
   accumulator = 0;
    double memory;
}
      -(double) accumulator
{
   return accumulator;
}
      -(void) add: (double) value
{
   accumulator += value;
}
      -(void) subtract: (double) value
{
   accumulator -= value;
}
      -(void) multiply: (double) value
{
   accumulator *= value;
}
      -(void) divide: (double) value
{
   accumulator /= value;
}
                                  
    -(double) memoryClear｛
      memory = 0;
      return memory
｝
                                  
-(double) memoryStore｛
      memory = accumulator;
      return memory;
      ｝// set memory to accumulator
-(double) memoryRecall｛
    return memory = accumulator;
｝
                                  
-(double) memoryAdd: (double) value｛
      return memory = memory + value;
      ｝
-(double) memorySubtract: (double) value｛
                                  
      return memory = memory - value;
      ｝
                                  
                                  
                                  
                                  
                                  
                                  @end
      int main (int argc, char * argv[])
{
   @autoreleasepool {
       Calculator *deskCalc = [[Calculator alloc] init];
       [deskCalc setAccumulator: 100.0];
       [deskCalc add: 200.];
       [deskCalc divide: 15.0];
       [deskCalc subtract: 10.0];
       [deskCalc multiply: 5];
       NSLog (@"The result is %g", [deskCalc accumulator]);
   }
    return 0；
    
}

    
     
