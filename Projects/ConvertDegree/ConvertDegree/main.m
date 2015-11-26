//
//  main.m
//  ConvertDegree
//
//  Created by kongyunpeng on 11/21/15.
//  Copyright © 2015 kongyunpeng. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        float celsiusDegree;
        celsiusDegree = (27 - 32)/1.8;
        NSLog(@"Fahrenheit 27 is %.2f in Celsius degree",celsiusDegree);
        
    }
    return 0;
}
