//
//  Operate.m
//  SimpleFactory
//
//  Created by 丁玉松 on 2018/10/30.
//  Copyright © 2018 丁玉松. All rights reserved.
//

#import "Operate.h"

@implementation Operate
- (CGFloat)operateResultWithNumberA:(CGFloat)numberA numberB:(CGFloat)numberB operate:(NSString *)operate{
    if ([operate isEqualToString:@"+"]) {
        return numberA + numberB;
    }
    else if ([operate isEqualToString:@"-"]) {
        return numberA - numberB;
    }
    else if ([operate isEqualToString:@"*"]) {
        return numberA * numberB;
    }
    else if ([operate isEqualToString:@"/"]) {
        return numberA / numberB;
    }
    else{
        return 0;
    }
}
@end
