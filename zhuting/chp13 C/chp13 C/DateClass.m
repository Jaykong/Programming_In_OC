//
//  DateClass.m
//  chp13 C
//
//  Created by Wenslow on 15/12/5.
//  Copyright © 2015年 Wenslow. All rights reserved.
//

#import "DateClass.h"

@implementation DateClass

- (DateClass *) dateUpdate
{
    
    self.day += 1;
    switch (self.month) {
        case 1:
        case 3:
        case 5:
        case 7:
        case 8:
        case 10:
        case 12:
            if (self.day == 32) {
                self.day = 1;
                self.month += 1;
            }else{
                self.month = self.month;
            }
            break;
        case 4:
        case 6:
        case 9:
        case 11:
            if (self.day == 31) {
                self.day = 1;
                self.month += 1;
            }else{
                self.month = self.month;
            }
            break;
        case 2:
            if (self.day == 29) {
                self.day = 1;
                self.month += 1;
            }else{
                self.month = self.month;
            }
            break;
        default:
            break;
    }
    if (self.month == 13) {
        self.month = 1;
        self.year += 1;
    }
    
    return self;
}
@end
