
//
//  Person.m
//  LearnNSInvocation
//
//  Created by 赵国腾 on 15/7/26.
//  Copyright (c) 2015年 zhaoguoteng. All rights reserved.
//

#import "Person.h"

@implementation Person

- (void)outputPersonInfos:(NSString *)name age:(NSInteger)age job:(NSString *)job {
    
    NSLog(@"姓名:%@ 年龄:%ld 工作:%@", name, age, job);
}

@end
