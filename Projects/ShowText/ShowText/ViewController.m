//
//  ViewController.m
//  ShowText
//
//  Created by trainer on 11/25/15.
//  Copyright © 2015 trainer. All rights reserved.
//

#import "ViewController.h"
#import "Fraction.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    Fraction *fraction = [[Fraction alloc]init];
    [fraction setDenominator:3];
    [fraction setNumerator: 1];
    _lbl.text = [NSString stringWithFormat:@"%i/%i",[fraction returnNumerator],[fraction returnDenominator] ]; //[NSStringFromClass( ) @"%i/%i",[fraction returnNumerator],[fraction returnDenominator]);]
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
