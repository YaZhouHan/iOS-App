//
//  BaseDataApi.h
//  MyApp
//
//  Created by julong on 14/10/22.
//  Copyright (c) 2014年 韩亚周. All rights reserved.
//

#import <Foundation/Foundation.h>

// 获取远程数据api的基类
@interface BaseDataApi : NSObject

// build url 包括服务器地址
+ (NSString *)buildUrl:(NSString *) url;

@end
