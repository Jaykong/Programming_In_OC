//
//  Fraction+Comparison.h
//  chap11
//
//  Created by 笑郎 on 15/12/17.
//  Copyright © 2015年 Miami Heat. All rights reserved.
//

#import "Fraction.h"

@interface Fraction (Comparison)
-(BOOL)isEqualTo:(Fraction *)f;
-(int)compare:(Fraction *)f;
@end
