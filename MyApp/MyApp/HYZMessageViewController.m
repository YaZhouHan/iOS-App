//
//  HYZMessageViewController.m
//  MyApp
//
//  Created by hanyazhou on 14-9-14.
//  Copyright (c) 2014年 韩亚周. All rights reserved.
//

#import "HYZMessageViewController.h"

@interface HYZMessageViewController ()

@end

@implementation HYZMessageViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = @"消息";
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    _messageTableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height) style:UITableViewStylePlain];
    _messageTableView.delegate = self;
    _messageTableView.dataSource = self;
    _messageTableView.rowHeight = 64;
    [self.view addSubview:_messageTableView];
    _messageTableView.tableFooterView = [UIView new];
    _messageArray = @[
  @{@"image":@"ic_message_system",@"title":@"系统消息",@"content":@"您暂时没有新消息"},
  @{@"image":@"ic_message_neaby",@"title":@"附近新订单",@"content":@"您暂时没有新消息"},
  @{@"image":@"ic_message_express",@"title":@"订单跟踪",@"content":@"您暂时没有新消息"}];
}

#pragma mark -
#pragma mark UITableViewDatasource -
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return _messageArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *indentifire = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:indentifire];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:indentifire];
    }
    cell.imageView.image = [UIImage imageNamed:[NSString stringWithFormat:@"%@",_messageArray[indexPath.row][@"image"]]];
    cell.textLabel.text = _messageArray[indexPath.row][@"title"];
    cell.detailTextLabel.text = _messageArray[indexPath.row][@"content"];
    return cell;
}

- (void)didReceiveMemoryWarning{[super didReceiveMemoryWarning];}

@end
