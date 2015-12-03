//
//  Day.m
//  chap10excise
//
//  Created by 笑郎 on 15/12/3.
//  Copyright © 2015年 Miami Heat. All rights reserved.
//

#import "Day.h"

@implementation Day
@synthesize findDays ;

-(void)findDays:(Days)d
{
    switch (d) {
        case Sunday:
            NSLog(@"sunday");
            break;
            
        case Monday:
            NSLog(@"monday");
            break;
            
        case Tuesday:
            NSLog(@"tuesday");
            break;
        case Wednesday:
            NSLog(@"wednesday");
            break;
            
        case Thursday:
            NSLog(@"thursday");
            break;
            
        case Friday:
            NSLog(@"friday");
            break;
            
        case Saturday:
            NSLog(@"saturday");
            
        default:
            NSLog(@"type wrong");
            break;
    }
}


@end
