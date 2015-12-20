//
//  DateClass.h
//  chp13 C
//
//  Created by Wenslow on 15/12/5.
//  Copyright © 2015年 Wenslow. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DateClass : NSObject

@property int day, month, year;

- (DateClass *) dateUpdate;

@end
