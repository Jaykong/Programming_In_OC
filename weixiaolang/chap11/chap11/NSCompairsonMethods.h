//
//  NSCompairsonMethods.h
//  chap11
//
//  Created by 笑郎 on 15/12/17.
//  Copyright © 2015年 Miami Heat. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol NSCompairsonMethods <NSObject>
-(BOOL)isEqualTO:(id)f ;
-(BOOL)isLessThanOrEqualTo:(id)f;
-(BOOL)isLessThan:(id)f;
-(BOOL)isGreaterThanOrEqualTo:(id)f;
-(BOOL)isNotEqualTo:(id)f;
-(BOOL)isGreaterThan:(id)f;

@end
