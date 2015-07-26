//
//  Person.h
//  LearnNSInvocation
//
//  Created by 赵国腾 on 15/7/26.
//  Copyright (c) 2015年 zhaoguoteng. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, assign) NSInteger age;
@property (nonatomic, strong) NSString *job;

- (void)outputPersonInfos:(NSString *)name age:(NSInteger)age job:(NSString *)job;

@end
