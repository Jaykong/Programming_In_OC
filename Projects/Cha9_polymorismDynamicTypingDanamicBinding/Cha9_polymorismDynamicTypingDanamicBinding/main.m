//
//  main.m
//  Cha9_polymorismDynamicTypingDanamicBinding
//
//  Created by trainer on 11/24/15.
//  Copyright © 2015 trainer. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Fraction : NSObject

-(void)setDenominator:(int)d;
-(void)setNumerator:(int)n;
@end

@implementation Fraction
{
    int numerator;
    int denominator;
}
-(void)setDenominator:(int)d {
    denominator = d;
    if (d == 0) {
        NSException *exception = [NSException exceptionWithName:@"Denominator" reason:@"denominator can not be zero" userInfo:nil];
        @throw exception;
    }
}
-(void)setNumerator:(int)n {
    numerator = n;
}
@end
int main(int argc, const char * argv[]) {
    @autoreleasepool {
#pragma mark - Exception Handling
        
//        Fraction *fraction = [[Fraction alloc] init];
//        
//        @try {
//            [fraction setDenominator:0];
//        }
//        @catch (NSException *exception) {
//            NSLog(@"%@:\n Name:%@\n Reasion:%@",exception,exception.name,exception.reason);
//        }
//        @finally {
//            
//        }
        NSArray *arr = @[@"1",@"2"];
        
       
        @try {
        //[arr objectAtIndex:2];
            NSException *exception = [NSException exceptionWithName:@"Denominator" reason:@"denominator can not be zero" userInfo:nil];
            @throw exception;
            
        }
        @catch (NSException *exception) {
            //<#Handle an exception thrown in the @try block#>
            NSLog(@"%@:\n Name:%@\n Reason:%@",exception,exception.name,exception.reason);
        }
        
        @finally {
            //<#Code that gets executed whether or not an exception is thrown#>
            NSLog(@"finally");
            
      }
        
    }
    return 0;
}
