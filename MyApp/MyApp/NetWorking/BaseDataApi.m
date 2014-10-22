//
//  BaseDataApi.m
//  MyApp
//
//  Created by julong on 14/10/22.
//  Copyright (c) 2014年 韩亚周. All rights reserved.
//

#import "BaseDataApi.h"

@implementation BaseDataApi

+ (NSString *)buildUrl:(NSString *)url
{
    NSString *result = [NSString stringWithFormat:@"%@%@", [PublicConfig BaseServerUrl], url];
    return result;
}

@end