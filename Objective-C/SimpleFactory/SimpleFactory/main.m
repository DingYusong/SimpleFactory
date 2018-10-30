//
//  main.m
//  SimpleFactory
//
//  Created by 丁玉松 on 2018/10/30.
//  Copyright © 2018 丁玉松. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Operate.h"

#import "OperateAdd.h"

#import "OperateFactory.h"

//(OC方法，只能被定义在OC类中)
//- (CGFloat)resultWithNumberA:(CGFloat)numberA numberB:(CGFloat)numberB operate:(NSString *)operate {
//
//    return 0;
//}

/**
 第一种：面向过程编程。
 如果增加一种运算类型则需要修改源代码，修改源代码可能会对原有的功能造成影响，显然这不是一种很好的处理方法。
 */
float operateResult(float numberA ,float numberB ,char operate) {
    switch (operate) {
        case '+':
            return numberA + numberB;
            break;
        case '-':
            return numberA - numberB;
            break;
        case '*':
            return numberA * numberB;
            break;
        case '/':
            return numberA / numberB;
            break;
        default:
            return 0;
            break;
    }
}

/**
 应用面向对象语言，实现一个计算器，要求输入两个数和运算符，输出结果。
 */
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //第一种：面向过程写法-不符合开放关闭原则。
//        float result = operateResult(1,2,'+');
//        NSLog(@"%.2f",result);
        
        //第二种：面向对象写法-不符合开放关闭原则。
//        Operate *operate = [Operate new];
//        CGFloat result = [operate operateResultWithNumberA:1 numberB:2 operate:@"+"];
//        NSLog(@"%.2f",result);
        
        //第三种：面向对象写法-符合开放关闭原则。新增一种算法的话，就增加一个Operate子类。
//        OperateBase *operate = [OperateAdd new];
//        operate.numberA = 1;
//        operate.numberB = 2;
//        CGFloat result = operate.GetResult;
//        NSLog(@"%.2f",result);

        //第四种：简单工厂模式。新增一种算法的话，除了增加一个Operate子类外还要修改OperateFactory工厂类，这不符合开放关闭原则。
        OperateBase *operate = [OperateFactory createOperate:@"+"];
        operate.numberA = 1;
        operate.numberB = 2;
        CGFloat result = operate.GetResult;
        NSLog(@"%.2f",result);
    }
    return 0;
}



