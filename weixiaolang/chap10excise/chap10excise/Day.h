//
//  Day.h
//  chap10excise
//
//  Created by 笑郎 on 15/12/3.
//  Copyright © 2015年 Miami Heat. All rights reserved.
//

#import <Foundation/Foundation.h>
typedef enum { Sunday, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday} Days;

@interface Day : NSObject
@property   Days findDays;
-(void)findDays:( Days)d;

@end
