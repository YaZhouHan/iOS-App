//
//  HYZMainViewController.m
//  MyApp
//
//  Created by hanyazhou on 14-9-14.
//  Copyright (c) 2014年 韩亚周. All rights reserved.
//

#import "HYZMainViewController.h"

@interface HYZMainViewController ()

@end

@implementation HYZMainViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"home_logo.png"]];
    }
    return self;
}

- (void)loginItemClick:(UIBarButtonItem *)sender{
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.automaticallyAdjustsScrollViewInsets = NO;
    
    
    _imageArray = @[[UIImage imageNamed:@"home_icon_picksend.png"],[UIImage imageNamed:@"home_icon_send.png"],[UIImage imageNamed:@"home_icon_jounrry.png"]];
    _titleArray = @[@"我要代购",@"我要发货",@"晒出行程"];
    _detailArray = @[@"指定货，帮我带，选人人",@"着急送，选人人，准时达",@"晒行程，帮捎带，攒人品"];
    
    
    UIBarButtonItem *loginItem = [[UIBarButtonItem alloc] initWithTitle:@"登陆" style:UIBarButtonItemStylePlain target:self action:@selector(loginItemClick:)];
    loginItem.tintColor = [UIColor colorWithRed:252/255.0 green:103/255.0 blue:0/255.0 alpha:1.0];
    self.navigationItem.rightBarButtonItem = loginItem;
    
    _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 64, 320, [[UIScreen mainScreen] bounds].size.height - 64 -49) style:UITableViewStylePlain];
    [_tableView registerClass:[HYZTableViewCell class] forCellReuseIdentifier:@"cell"];
    [_tableView registerClass:[HYZOpenCell class] forCellReuseIdentifier:@"openCell"];
    _tableView.delegate = self;
    _tableView.dataSource = self;
    _tableView.backgroundColor = [UIColor colorWithRed:215/255.0 green:215/255.0 blue:215/255.0 alpha:1.0];
    UIView *view = [[UIView alloc] init];
    view.backgroundColor = [UIColor clearColor];
    _tableView.backgroundView = view;
    _tableView.showsVerticalScrollIndicator = NO;
    _tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    [self.view addSubview:_tableView];
    
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
    if (section == 0) {
        UIImageView *imageView = [[UIImageView alloc] init];
        imageView.image = [UIImage imageNamed:@"home_titleicon.png"];
        return imageView;
    }else{
        return nil;
    }
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 4;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    if (section == 0) {
        return 0;
    }else if (section == 1){
        if (_isOpen) {
            return 3;
        }else{
            return 2;
        }
    }else{
        return 1;
    }
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.section == 1) {
        if (indexPath.row == 0) {
            return 64;
        }else{
            if (_isOpen && indexPath.row == 1) {
                return 64;
            }else{
                return 20;
            }
        }
    }else{
        return 64;
    }
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    if (section == 0) {
        return 160;
    }else{
        return 20;
    }
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.section == 1) {
        if (indexPath.row == 0) {
            HYZTableViewCell *cell = [[HYZTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
            cell.headImage = _imageArray[indexPath.section-1];
            cell.delegate = self;
            return cell;
        }else{
            if (_isOpen && indexPath.row == 1) {
                HYZOpenCell *cell = [[HYZOpenCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"openCell"];
                cell.titleArray = @[@"排队美食",@"下午茶",@"鲜花",@"其它"];
                return cell;
            }else{
                UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:nil];
                cell.backgroundColor = [UIColor clearColor];
                UIImageView *imageView = [[UIImageView alloc] init];
                imageView.image = [UIImage imageNamed:@"small.png"];
                imageView.frame = CGRectMake(10, 0, 300, 20);
                [cell.contentView addSubview:imageView];
                return cell;
            }
        }
    }else{
        HYZTableViewCell *cell = [[HYZTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
        cell.headImage = _imageArray[indexPath.section-1];
        return cell;
    }
    
}

#pragma mark -
#pragma mark HYZTableViewCellDelegate -
- (void)tableViewCell:(HYZTableViewCell *)tableViewCell didSelect:(NSInteger)select{
    _isOpen =!_isOpen;
    if (select == 0) {
        [_tableView reloadSections:[[NSIndexSet alloc] initWithIndex:1] withRowAnimation:UITableViewRowAnimationNone];
    }else{
        [_tableView reloadSections:[[NSIndexSet alloc] initWithIndex:1] withRowAnimation:UITableViewRowAnimationNone];
    }
}

- (void)didReceiveMemoryWarning{[super didReceiveMemoryWarning];}

@end
