
    //
//  HYZTableViewCell.m
//  MyApp
//
//  Created by hanyazhou on 14-9-15.
//  Copyright (c) 2014年 韩亚周. All rights reserved.
//

#import "HYZTableViewCell.h"

@implementation HYZTableViewCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        
        self.backgroundColor = [UIColor clearColor];
        
        _button = [UIButton buttonWithType:UIButtonTypeCustom];
        _button.backgroundColor = [UIColor whiteColor];
        [_button addTarget:self action:@selector(click:) forControlEvents:UIControlEventTouchUpInside];
        [self.contentView addSubview:_button];
        
        UIImageView *headImageView = [[UIImageView alloc] init];
        headImageView.frame = CGRectMake(20, 20, 24, 24);
        headImageView.tag = 10087;
        [_button addSubview:headImageView];
        
        
        UILabel *titleLable = [[UILabel alloc] init];
        titleLable.text = @"我要发货";
        titleLable.tag = 10088;
        titleLable.font = [UIFont systemFontOfSize:16];
        [_button addSubview:titleLable];
        
        UILabel *detailLable = [[UILabel alloc] init];
        detailLable.text = @"着急送，选人人，准时达";
        detailLable.tag = 10089;
        detailLable.font = [UIFont systemFontOfSize:12];
        [_button addSubview:detailLable];
        
        UIView *lineView  = [[UIView alloc] init];
        lineView.backgroundColor = [UIColor redColor];
        [_button addSubview:lineView];
        
        UIView *buttonView  = [[UIView alloc] init];
        buttonView.backgroundColor = [UIColor redColor];
        [_button addSubview:buttonView];
    }
    return self;
}

- (void)click:(UIButton *)sender{
    sender.selected = !sender.selected;
    if ([_delegate respondsToSelector:@selector(tableViewCell:didSelect:)]) {
        [_delegate tableViewCell:self didSelect:sender.selected];
    }
}

- (void)drawRect:(CGRect)rect{
    UILabel *titleLabel  = (UILabel *)[self viewWithTag:10088];
    
    titleLabel.frame = CGRectMake(80, 2, [self width:titleLabel.text font:16 height:30], 30);
    
    UILabel *detailLable  = (UILabel *)[self viewWithTag:10089];
    detailLable.frame = CGRectMake(80, 32, [self width:detailLable.text font:12 height:30], 30);
    
    _button.frame = CGRectMake(10, 0, 300, rect.size.height);
    UIImageView *headImageView = (UIImageView *)[self viewWithTag:10087];
    headImageView.image = _headImage;
}

- (CGFloat)width:(NSString *)contentString font:(NSInteger)font height:(CGFloat)height{
    CGFloat f = height;
    UIFont *font1 = [UIFont systemFontOfSize:font];
    NSString *s = contentString;
#if __IPHONE_OS_VERSION_MIN_REQUIRED < __IPHONE_7_0
    CGSize size = [s sizeWithFont:font constrainedToSize:CGSizeMake(CGFLOAT_MAX, f)];
    return size.width +10 ;
#else
    NSDictionary *attributesDic = @{NSFontAttributeName:font1};
    CGSize size = [s boundingRectWithSize:CGSizeMake(CGFLOAT_MAX, f) options:NSStringDrawingUsesLineFragmentOrigin attributes:attributesDic context:nil].size;
    return size.width + 10;
#endif
}

- (void)awakeFromNib{}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated{[super setSelected:selected animated:animated];}

@end

@implementation HYZOpenCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        self.backgroundColor = [UIColor clearColor];
        
        UIView *view = [[UIView alloc] init];
        view.tag = 10086;
        [self.contentView addSubview:view];
    }
    return self;
}


- (void)drawRect:(CGRect)rect{
    UIView *view = [self viewWithTag:10086];
    view.frame = CGRectMake(10, 0, 300, rect.size.height);
    for (int i = 0; i < 4; i ++) {
        UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
        button.backgroundColor = [UIColor colorWithRed:235.0/255.0 green:130.0/255.0 blue:97.0/255.0 alpha:1.0];
        [button setTitle:_titleArray[i] forState:UIControlStateNormal];
        button.frame = CGRectMake(0 + view.frame.size.width/_titleArray.count*i, 0, (view.frame.size.width - 3)/_titleArray.count, rect.size.height);
        [view addSubview:button];
    };
}

- (void)awakeFromNib{}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated{[super setSelected:selected animated:animated];}

@end
