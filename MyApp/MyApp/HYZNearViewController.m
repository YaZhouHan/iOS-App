//
//  HYZNearViewController.m
//  MyApp
//
//  Created by hanyazhou on 14-9-14.
//  Copyright (c) 2014年 韩亚周. All rights reserved.
//

#import "HYZNearViewController.h"

@interface HYZNearViewController ()

@end

@implementation HYZNearViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = @"附近消息";
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UIView *noMessageView = [[UIView alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    [self.view addSubview:noMessageView];
    
    UIImageView *imageview = [[UIImageView alloc] initWithFrame:CGRectMake(100, 120, 110, 130)];
    imageview.image = [UIImage imageNamed:@"pic_empty"];
    [noMessageView addSubview:imageview];
    
    UILabel *aweakLable = [[UILabel alloc] initWithFrame:CGRectMake(30, 220, 260, 180)];
    aweakLable.text = @"订单一倍其它自由快递人接收，请保持在线状态，我们会第一时间将新的信息推送到您的手机，同时，欢迎您通过同城快递平台发布信息!";
    aweakLable.textAlignment = NSTextAlignmentCenter;
    aweakLable.font = [UIFont systemFontOfSize:16];
    aweakLable.backgroundColor = [UIColor whiteColor];
    aweakLable.numberOfLines = 0;
    aweakLable.textColor = [UIColor grayColor];
    [noMessageView addSubview:aweakLable];
    
    
    UIButton *messageButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [messageButton setTitle:@"郑州" forState:UIControlStateNormal];
    [messageButton setTitleColor:[UIColor orangeColor] forState:UIControlStateNormal];
    [messageButton sizeToFit];
    messageButton.tag = 11;
    [messageButton setContentMode:UIViewContentModeCenter];
    [messageButton addTarget:self action:@selector(titleItemBtnClick:) forControlEvents:UIControlEventTouchUpInside];
    UIBarButtonItem *messageItem = [[UIBarButtonItem alloc] initWithCustomView:messageButton];
    self.navigationItem.rightBarButtonItems = @[messageItem];
}

- (void)didReceiveMemoryWarning{[super didReceiveMemoryWarning];}

@end
