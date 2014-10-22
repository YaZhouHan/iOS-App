//
//  HYZMineViewController.m
//  MyApp
//
//  Created by hanyazhou on 14-9-14.
//  Copyright (c) 2014年 韩亚周. All rights reserved.
//

#import "HYZMineViewController.h"

@interface HYZMineViewController ()

@end

@implementation HYZMineViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = @"我的";
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.automaticallyAdjustsScrollViewInsets = NO;
    
    UIBarButtonItem *loginItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"per_seting.png"] style:UIBarButtonItemStylePlain target:self action:@selector(settingButtonClick:)];
    loginItem.tintColor = [UIColor colorWithRed:252/255.0 green:103/255.0 blue:0/255.0 alpha:1.0];
    self.navigationItem.rightBarButtonItem = loginItem;
    
    _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 64, 320, [[UIScreen mainScreen] bounds].size.height - 64 -49) style:UITableViewStylePlain];
    [_tableView registerClass:[HYZCustomCell class] forCellReuseIdentifier:@"cell"];
    _tableView.delegate = self;
    _tableView.dataSource = self;
    _tableView.backgroundColor = [UIColor colorWithRed:215/255.0 green:215/255.0 blue:215/255.0 alpha:1.0];
    UIView *view = [[UIView alloc] init];
    view.backgroundColor = [UIColor clearColor];
    _tableView.backgroundView = view;
    _tableView.showsVerticalScrollIndicator = NO;
    [self.view addSubview:_tableView];
    
    _imageArray = @[[UIImage imageNamed:@"per_apply.png"],[UIImage imageNamed:@"per_address.png"],[UIImage imageNamed:@"per_goods.png"],[UIImage imageNamed:@"per_yaoqin.png"],[UIImage imageNamed:@"per_fenxiang.png"],[UIImage imageNamed:@"per_jianyi.png"],[UIImage imageNamed:@"usercenter_about@2x.png"]];
    _titleArray = @[@"申请自由快递人",@"常用地址",@"常发货物",@"邀请好友",@"分享朋友",@"建议与反馈",@"关于人人快递"];
}

- (void)settingButtonClick:(UIBarButtonItem *)sender{
    
}

#pragma mark -
#pragma mark HYZCustomCellDataSource -
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 5;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    if (section == 0 || section == 1) {
        return 1;
    }else{
        return 2;
    }
    
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.section == 0) {
        return 120;
    }else{
        return 44;
    }
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    if (section == 0) {
        return 0;
    }else{
        return 20;
    }
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.section == 0) {
        HYZCustomCell *cell = [[HYZCustomCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:nil];
        return cell;
    }else if (indexPath.section == 1){
        UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:nil];
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
        cell.imageView.image = _imageArray[0];
        cell.textLabel.text = _titleArray[0];
        return cell;
    }else if (indexPath.section == 2){
        if (indexPath.row == 0) {
            UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:nil];
            cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
            cell.imageView.image = _imageArray[1];
            cell.textLabel.text = _titleArray[1];
            return cell;
        }else{
            UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:nil];
            cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
            cell.imageView.image = _imageArray[2];
            cell.textLabel.text = _titleArray[2];
            return cell;
        }
    }else if (indexPath.section == 3){
        if (indexPath.row == 0) {
            UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:nil];
            cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
            cell.imageView.image = _imageArray[3];
            cell.textLabel.text = _titleArray[3];
            return cell;
        }else{
            UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:nil];
            cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
            cell.imageView.image = _imageArray[4];
            cell.textLabel.text = _titleArray[4];
            return cell;
        }
    }else if (indexPath.section == 4){
        if (indexPath.row == 0) {
            UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:nil];
            cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
            cell.imageView.image = _imageArray[5];
            cell.textLabel.text = _titleArray[5];
            return cell;
        }else{
            UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:nil];
            cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
            cell.imageView.image = _imageArray[6];
            cell.textLabel.text = _titleArray[6];
            return cell;
        }
    }else{
        return nil;
    }
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}


- (void)didReceiveMemoryWarning{[super didReceiveMemoryWarning];}

@end
