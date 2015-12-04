//
//  HMJRefreshHeader.m
//  HMJ_Project
//
//  Created by HeMengjie on 15/11/22.
//  Copyright © 2015年 HeMengjie. All rights reserved.
//

#import "HMJRefreshHeader.h"

@interface HMJRefreshHeader ()
/**< logo*/
@property (nonatomic, weak) UIImageView *logo;

@end

@implementation HMJRefreshHeader
/**
 *  初始化
 */
- (void)prepare
{
    [super prepare];
    
    self.automaticallyChangeAlpha = YES;
    self.lastUpdatedTimeLabel.textColor = [UIColor darkGrayColor];
    self.stateLabel.textColor = [UIColor greenColor];
    [self setTitle:@"赶紧下拉吧" forState:MJRefreshStateIdle];
    [self setTitle:@"赶紧松开吧" forState:MJRefreshStatePulling];
    [self setTitle:@"正在加载数据..." forState:MJRefreshStateRefreshing];
    UIImageView *logo = [[UIImageView alloc] init];
    logo.image = [UIImage imageNamed:@"MainTitle"];
    [self addSubview:logo];
    self.logo = logo;
}
/**
 *  摆放子控件
 */
- (void)placeSubviews
{
    [super placeSubviews];
    
    self.logo.hmj_x = 0;
    self.logo.hmj_y = - 50;
    self.logo.hmj_width = self.hmj_width;
    self.logo.hmj_height = 50;
}


@end
