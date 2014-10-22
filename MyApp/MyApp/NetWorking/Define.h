//
//  Define.h
//  MyApp
//
//  Created by julong on 14/10/22.
//  Copyright (c) 2014年 韩亚周. All rights reserved.
//


//工程宏定义
#import <Foundation/Foundation.h>


//-------------------执行代码公共区域---------------------

//自定义颜色,程序启动时自动加载
#define UIColorFromRGB(rgbValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]

#define  SCREEN_HEIGHT ([UIScreen mainScreen].bounds.size.height)
#define  SCREEN_WIDTH  ([UIScreen mainScreen].bounds.size.width)



//-------------------接口请求相关区域---------------------

//服务器地址
#define  BASE_URL                              @"http://zsapi.kun-hong.com/"