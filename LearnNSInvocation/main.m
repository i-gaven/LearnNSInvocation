//
//  main.m
//  LearnNSInvocation
//
//  Created by 赵国腾 on 15/7/26.
//  Copyright (c) 2015年 zhaoguoteng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Person *jeck = [[Person alloc]init];

        NSMethodSignature *sig = [jeck methodSignatureForSelector:@selector(outputPersonInfos:age:job:)];
        
        NSInvocation *invocation = [NSInvocation invocationWithMethodSignature:sig];
        
        [invocation setTarget:jeck];
        [invocation setSelector:@selector(outputPersonInfos:age:job:)];
        
        NSString *n = @"赵国腾";
        NSInteger a = 89;
        NSString *j = @"iOS Dev";
        
        [invocation setArgument:&n atIndex:2];
        [invocation setArgument:&a atIndex:3];
        [invocation setArgument:&j atIndex:4];

        [invocation retainArguments];
        
        [invocation invoke];
        
//        @property (readonly) BOOL argumentsRetained;
//        - (void)getReturnValue:(void *)retLoc;
//        - (void)setReturnValue:(void *)retLoc;
//        - (void)invoke;

        NSLog(@"Hello, World!");
    }
    return 0;
}
