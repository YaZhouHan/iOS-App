//
//  HYZMineViewController.h
//  MyApp
//
//  Created by hanyazhou on 14-9-14.
//  Copyright (c) 2014年 韩亚周. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HYZCustomCell.h"

@interface HYZMineViewController : HYZCustomNavigationController<UITableViewDataSource,UITableViewDelegate>
@property (nonatomic, strong) UITableView        *tableView;
@property (nonatomic, strong) NSArray     *imageArray;
@property (nonatomic, strong) NSArray     *titleArray;
@end
