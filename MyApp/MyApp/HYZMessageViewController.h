//
//  HYZMessageViewController.h
//  MyApp
//
//  Created by hanyazhou on 14-9-14.
//  Copyright (c) 2014年 韩亚周. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HYZMessageViewController : HYZCustomNavigationController<UITableViewDataSource,UITableViewDelegate>
@property (nonatomic, strong) UITableView *messageTableView;
@property (nonatomic, strong) NSArray     *messageArray;
@end
