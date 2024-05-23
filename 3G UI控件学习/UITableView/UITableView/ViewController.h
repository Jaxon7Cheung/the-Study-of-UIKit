//
//  ViewController.h
//  UITableView
//
//  Created by 张旭洋 on 2023/7/19.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
<
//实现数据视图的普通协议
//数据视图的普通事件处理
UITableViewDelegate,
//实现数据视图的数据代理
//处理数据视图的数据代理
UITableViewDataSource
>
    //定义一个数据视图对象
    //数据视图对象用来显示大量相同格式的信息的视图
    //例如：电话通讯录，QQ好友，朋友圈信息
@property(nonatomic, strong) UITableView* tableView;

@end

