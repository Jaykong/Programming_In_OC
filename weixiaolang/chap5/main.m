//
//  main.m
//  chap5
//
//  Created by 笑郎 on 15/11/25.
//  Copyright © 2015年 Miami Heat. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
#pragma mark-excise1#
        int n=1;
        NSString *str=@"n^2";
        NSLog(@"The number of %i and %@ is:",n,str);
        NSLog(@"----------------------------");
        for (; n<=10; ++n) {
            NSLog(@"%i  %i",n,n*n);
        }
        
        
#pragma mark-excise2#
        int n2,triangulaerNumber;
        triangulaerNumber=0;
        for (n2=1; n2<=50;++n2){
            while (n2%5==0) {
                triangulaerNumber=n2*(n2+1)/2;
                NSLog(@"The triangularNumber of %i is:%i",n2,triangulaerNumber);
                break;
            }
        }
        
        
        
#pragma mark-excise3#

        int n3,number3;
        number3=1;
        NSLog(@"Enter the number of n3");
        scanf("%i",&n3);
        for (; n3>=1; n3--) {
            
            number3 *=n3;
            NSLog(@"%i",number3);
        }


#pragma mark-excise4#
        int n4,triangularNumber;
        NSLog(@"TABLE OF TRANGULAR NUMBER");
        NSLog(@"n4 Sum from 1 to n");
        NSLog(@"-- ---------------");
        
        triangularNumber=0;
        for (n4=1; n4<=10; ++n4 ) {
            triangularNumber +=n4;
            NSLog(@"%-2i     %i",n4,triangularNumber);
        }
        //这种写法55与上面的三角数左对齐，而%i的写法使得55与上面的三角数错开了一位；
      
#pragma mark-excise5#

        int n5,number5,triangularNumber5,counter5;

        NSLog(@"What triangular number and counter5  do you want?");
        scanf("%i %i",&number5,&counter5);
        for (;counter5>0; --counter5) {

            
            triangularNumber5=0;
            for (n5=1; n5<=number5; ++n5) {
                triangularNumber5 +=n5;
                
                NSLog(@"The counter5 %i Triangular Number %i is %i",counter5,number5,triangularNumber5);
            }
        }
        
#pragma mark-excise6#
        //5-2
        int a2=1,sum2;
        sum2=0;
        
        while (a2<=200) {
            sum2 +=a2;
            ++a2;
            NSLog(@"The 200th triangular number is %i",sum2);
        }
        
        
        //5-3
        int a3=1,sum3;
        
        NSLog(@"TABLE OF TRIANGULAR NUMBER");
        NSLog(@"a3 Sum from 1 to a3");
        NSLog(@"-- -------------");
        
        sum3=0;
        
        while (a3<=10) {
            sum3+=a3;
            NSLog(@"%-2i    %i",a3,sum3);
            ++a3;
        }
        
        
        //5-4
        int a4=1,number4,sum4;
        NSLog(@"What triangular number do you want?");
        scanf("%i",&number4);
        
        sum4=0;
        
        while (a4<=number4) {
            sum4 +=a4;
            ++a4;
        }
        
        NSLog(@"Triangular number %i is %i\n",number4,sum4);
        
        //5-5
        int a5=1,number5_5,sum5,counter5_5=1;
        
        NSLog(@"What triangular Number do you want");
        scanf("%i",&number5_5);
        
        while (counter5_5<=5) {
            
            sum5=0;
            while (a5<=number5_5) {
                sum5+=a5;
                ++a5;
                NSLog(@"Triangular number %i is %i",number5_5,sum5);
            }
            ++counter5_5;
        }
        
        
#pragma mark-excise7#
        int number7,right_digit;
        NSLog(@"Enter your number");
        scanf("%i",&number7);
        
        while (number7 !=0) {
            right_digit=number7%10;
            NSLog(@"%i",right_digit);
            number7 /=10;
        }
        //输入负数后，从右到左显示该数值的数字都带了负号；
        
        
#pragma mark-excise8#

        int number8=12345,rightDigit,sum8;
        NSLog(@"Enter your number:");
        scanf("%i",&number8);
                  sum8=0;

        while (number8 !=0) {
            rightDigit=number8 %10;
            sum8 +=rightDigit;
            number8 /=10;
        }
        NSLog(@"%i",sum8);

        
        
        
        


        
        
        
    
        }
    return 0;
}
