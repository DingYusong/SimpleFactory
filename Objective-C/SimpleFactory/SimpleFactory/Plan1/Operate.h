//
//  Operate.h
//  SimpleFactory
//
//  Created by 丁玉松 on 2018/10/30.
//  Copyright © 2018 丁玉松. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

/**
 如果要增加一个运算，例如开平方运算需要修改源代码，则不符合开闭原则。
 */
@interface Operate : NSObject

- (CGFloat)operateResultWithNumberA:(CGFloat)numberA numberB:(CGFloat)numberB operate:(NSString *)operate;

@end

NS_ASSUME_NONNULL_END
