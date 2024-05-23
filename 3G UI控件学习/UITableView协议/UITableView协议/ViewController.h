//
//  ViewController.h
//  UITableView协议
//
//  Created by 张旭洋 on 2023/7/19.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
<
//数据代理协议
UITableViewDataSource,
//普通代理协议
UITableViewDelegate
>

//定义数据视图对象
@property (nonatomic, strong)UITableView* tableView;

//声明一个数据源
@property (nonatomic, strong)NSMutableArray* arrayData;

@end

