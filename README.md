# HMJRefresh
刷新界面

##头部刷新
self.tableView.mj_header = [HMJRefreshHeader headerWithRefreshingTarget:self refreshingAction:@selector(loadNewTopic)];

##尾部刷新
self.tableView.mj_footer = [HMJRefreshFooter footerWithRefreshingTarget:self refreshingAction:@selector(loadMoreTopic)];
