//
//  main.m
//  InvalidConstants
//
//  Created by kongyunpeng on 11/21/15.
//  Copyright © 2015 kongyunpeng. All rights reserved.
//
#ifdef DEBUG
#define NSLog(FORMAT, ...) fprintf(stderr,"%s\n", [[NSString stringWithFormat:FORMAT, ##__VA_ARGS__] UTF8String]);
#else
#define NSLog(...) {}
#endif
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSLog(@"123.456 is %f",123.456);
        NSLog(@"oxtal 0001 is %o",0001);
        NSLog(@"hex 0Xab05 is %x",0Xab05);
      //  NSLog(@"hex 0x10.5 float is %a",0x10.5);
        //NSLog(@"hex 0X0G1 is %x",0X0G1);
        NSLog(@"hex is 0xFFFF:%x",0xFFFF);
        NSLog(@"123L is a Long int:%li",123L);
        NSLog(@"0Xab05 is a hexdicimal printed as:%x",0Xab05);
        NSLog(@"0L is a Long int shown as:%li",0L);
        NSLog(@"-597.25 is a nagative float shown as:%f",-597.52);
        NSLog(@"123.5e2 is a e float printed as %e",123.5e2);
        NSLog(@".0001 is a  float shown as :%f",.0001);
        NSLog(@"+12 is a positive unsign int:%u",+12);
#pragma mark check 1
        NSLog(@"98.6F is a float:%f",98.6F);
        
      //  NSLog(@"98.7U is a Unsigned int:%u",98.7U);//Invalid suffix 'U' on floating constant
     //  NSLog(@"17777s is a short int:%hi",1777s);/// Invalid suffix 's' on integer constant
       
       // NSLog(@"0996 is %o",0996);
        // Invalid digit '9' in octal constant
        
        NSLog(@"-12E-12 is int:%e",-12E-12);
       ;
        NSLog(@"07777 is oxtal:%o",07777);
       // ;
        NSLog(@"1234uL is a unsigned Long:%lu",1234uL);
        
       // 1.Fe-7
       // Invalid suffix 'Fe-7' on floating constant
       // NSLog(@"15,000 is a int:%i",15,000);
     //  Data argument not used by format string
        

        NSLog(@"1.234L is Long float:%Lf",1.234L);
        NSLog(@"197u is unsighed int:%u",197u);
      
        NSLog(@"100U is unsigned int %u",100U);
      
        NSLog(@"0XABCDEFL is Long hex:%lx",0XABCDEFL);
       
        NSLog(@"0xabcu is a unsigned hex:%ux",0xabcu);
        
     
        
        NSLog(@"+123 is a int:%i", +123);
       
        
        
        
    
        
    }
    return 0;
}
