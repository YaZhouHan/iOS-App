//
//  HYZMainViewController.h
//  MyApp
//
//  Created by hanyazhou on 14-9-14.
//  Copyright (c) 2014年 韩亚周. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HYZTableViewCell.h"

@interface HYZMainViewController : HYZCustomNavigationController<UITableViewDelegate,UITableViewDataSource,HYZTableViewCellDelegate>
@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, assign) BOOL        isOpen;
@property (nonatomic, strong) NSArray     *imageArray;
@property (nonatomic, strong) NSArray     *titleArray;
@property (nonatomic, strong) NSArray     *detailArray;
@end
