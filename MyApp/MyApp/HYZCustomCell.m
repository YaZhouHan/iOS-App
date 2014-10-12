//
//  HYZCustomCell.m
//  MyApp
//
//  Created by hanyazhou on 14-9-15.
//  Copyright (c) 2014年 韩亚周. All rights reserved.
//

#import "HYZCustomCell.h"

@implementation HYZCustomCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        
        self.backgroundColor = [UIColor clearColor];
        
        UIImageView *imageView = [[UIImageView alloc] init];
        imageView.image = [UIImage imageNamed:@"per_bg_11.9.png"];
        imageView.frame = CGRectMake(0, 0, 320, 120);
        [self.contentView addSubview:imageView];
        
        
        UIImageView *headImageView = [[UIImageView alloc] init];
        headImageView.image = [UIImage imageNamed:@"per_bg_11.9.png"];
        headImageView.frame = CGRectMake(40, 10, 50, 50);
        headImageView.layer.cornerRadius = 25;
        headImageView.clipsToBounds = YES;
        [imageView addSubview:headImageView];
        
        
        UILabel *label = [[UILabel alloc] init];
        label.frame = CGRectMake(100, 26, 80, 30);
        label.text = @"小驴Tom";
        [imageView addSubview: label];
        
        
        UIImageView *indecatorImageview = [[UIImageView alloc] init];
        indecatorImageview.image = [UIImage imageNamed:@"usercenter_info_arrow@2x.png"];
        indecatorImageview.frame = CGRectMake(280, 26, 20, 20);
        [imageView addSubview:indecatorImageview];
        
        
        HYZCustomView *backGroundView = [[HYZCustomView alloc] initWithFrame:CGRectMake(0, 70, 320, 50)];
        [imageView addSubview:backGroundView];
        //////////------gggggg
    }
    return self;
}

- (void)awakeFromNib{}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated{[super setSelected:selected animated:animated];}

@end
@implementation HYZCustomView
- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor colorWithRed:235.0/255.0 green:180.0/255.0 blue:180.0/255.0 alpha:0.2];
        
        HYZCustomButton *firstButton = [HYZCustomButton buttonWithType:UIButtonTypeCustom];
        firstButton.tag = 1000;
        [firstButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [firstButton setBackgroundColor:[UIColor clearColor]];
        firstButton.headImage = [UIImage imageNamed:@"per_mycount.png"];
        firstButton.titleString = @"我的账户";
        [firstButton addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:firstButton];
        
        
        HYZCustomButton *secondButton = [HYZCustomButton buttonWithType:UIButtonTypeCustom];
        secondButton.tag = 1001;
        [secondButton setBackgroundColor:[UIColor clearColor]];
        secondButton.headImage = [UIImage imageNamed:@"per_myorder.png"];
        secondButton.titleString = @"我的发货";
        [secondButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [secondButton addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:secondButton];
        
        HYZCustomButton *thirdbutton = [HYZCustomButton buttonWithType:UIButtonTypeCustom];
        thirdbutton.tag = 1002;
        [thirdbutton setBackgroundColor:[UIColor clearColor]];
        thirdbutton.headImage = [UIImage imageNamed:@"per_myshop.png"];
        thirdbutton.titleString = @"我的代购";
        [thirdbutton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [thirdbutton addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:thirdbutton];
    }
    return self;
}

- (void)drawRect:(CGRect)rect {
    
    UIButton *firstButton = (UIButton *)[self viewWithTag:1000];
    UIButton *secondButton = (UIButton *)[self viewWithTag:1001];
    UIButton *thirdButton = (UIButton *)[self viewWithTag:1002];
    
    firstButton.frame = CGRectMake(0, 0, rect.size.width/3, rect.size.height);
    secondButton.frame = CGRectMake(rect.size.width/3, 0, rect.size.width/3, rect.size.height);
    thirdButton.frame = CGRectMake(rect.size.width/3*2, 0, rect.size.width/3, rect.size.height);
    
    
    CGContextRef context = UIGraphicsGetCurrentContext();//获得处理上下文
    CGContextSetRGBStrokeColor(context, 255.0/255.0f, 255.0/255.0f, 255.0/255.0f, 1.0f);//设置线条颜色
    CGContextMoveToPoint(context, rect.size.width/3, 10.0);//设置线的坐标点
    CGContextAddLineToPoint(context, rect.size.width/3,rect.size.height - 10.0);//设置线的结束点
    CGContextMoveToPoint(context, rect.size.width/3*2, 10.0);//设置线的坐标点
    CGContextAddLineToPoint(context, rect.size.width/3*2,rect.size.height - 10.0);//设置线的结束点
    CGContextSetLineCap(context, kCGLineCapRound);//设置线条样式
    CGContextSetLineWidth(context, 1.0);//线的宽度
    CGContextStrokePath(context);//链接上边的坐标点
    [super drawRect:rect];
}

- (void)buttonClick:(UIButton *)sender{
    
}

@end

@implementation HYZCustomButton

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        self.backgroundColor = [UIColor clearColor];
        
        UIImageView *imageView = [[UIImageView alloc] initWithFrame: CGRectMake(5, 10, 30, 30)];
        imageView.tag = 10086;
        [self addSubview:imageView];
        
        UILabel *lable = [[UILabel alloc] init];
        lable.textAlignment = NSTextAlignmentCenter;
        lable.tag = 10010;
        lable.backgroundColor = [UIColor clearColor];
        lable.textColor = [UIColor whiteColor];
        lable.adjustsFontSizeToFitWidth = YES;
        [self addSubview:lable];
    }
    return self;
}

 - (void)drawRect:(CGRect)rect{
    UIImageView *imageView = (UIImageView *)[self viewWithTag:10086];
     imageView.image = _headImage;
     
     UILabel *lable = (UILabel *)[self viewWithTag:10010];
     lable.frame = CGRectMake(40, 10, rect.size.width - 50, 30);
     lable.text = _titleString;
}

@end
