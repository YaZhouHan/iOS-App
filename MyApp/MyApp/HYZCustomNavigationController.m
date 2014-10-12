//
//  HYZCustomNavigationController.m
//  MyApp
//
//  Created by hanyazhou on 14-9-14.
//  Copyright (c) 2014年 韩亚周. All rights reserved.
//

#import "HYZCustomNavigationController.h"

@interface HYZCustomNavigationController ()

@end

@implementation HYZCustomNavigationController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.navigationItem.titleView = _imageView;
    
    [[UINavigationBar appearance] setTintColor:[UIColor colorWithRed:252/255.0 green:103/255.0 blue:0/255.0 alpha:1.0]];
    
    self.navigationItem.backBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"返回" style:UIBarButtonItemStylePlain target:self action:@selector(leftBtnClicked)];
}

- (void)leftBtnClicked{
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
