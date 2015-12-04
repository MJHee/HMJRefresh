//
//  HMJRefreshFooter.m
//  HMJ_Project
//
//  Created by HeMengjie on 15/11/22.
//  Copyright © 2015年 HeMengjie. All rights reserved.
//

#import "HMJRefreshFooter.h"

@implementation HMJRefreshFooter

- (void)prepare
{
    [super prepare];
    self.stateLabel.textColor = [UIColor darkGrayColor];
    //刷新控件出现一半就进入刷新状态
    self.triggerAutomaticallyRefreshPercent = 0.5;
    //不再自动刷新
    self.automaticallyRefresh = NO;
}

@end
