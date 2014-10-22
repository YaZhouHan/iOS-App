//
//  HYZCustomCell.h
//  MyApp
//
//  Created by hanyazhou on 14-9-15.
//  Copyright (c) 2014年 韩亚周. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HYZCustomCell : UITableViewCell

@end
@interface HYZCustomView : UIView

@end
@interface HYZCustomButton : UIButton
@property (nonatomic, strong) UIImage    *headImage;
@property (nonatomic, strong) NSString   *titleString;

@end