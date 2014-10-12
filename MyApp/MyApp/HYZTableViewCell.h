//
//  HYZTableViewCell.h
//  MyApp
//
//  Created by hanyazhou on 14-9-15.
//  Copyright (c) 2014年 韩亚周. All rights reserved.
//

#import <UIKit/UIKit.h>
@class HYZTableViewCell;

@protocol HYZTableViewCellDelegate <NSObject>

- (void)tableViewCell:(HYZTableViewCell *)tableViewCell didSelect:(NSInteger)select;

@end

@interface HYZTableViewCell : UITableViewCell
@property (nonatomic, strong) UIImage                          *headImage;
@property (nonatomic, strong) NSString                         *titleString;
@property (nonatomic, strong) NSString                         *detailString;
@property (nonatomic, strong) UIButton                         *button;
@property (nonatomic, assign) id <HYZTableViewCellDelegate>    delegate;
@end
@interface HYZOpenCell : UITableViewCell
@property (nonatomic, strong) NSArray      *imageArray;
@property (nonatomic, strong) NSArray      *titleArray;
@end

