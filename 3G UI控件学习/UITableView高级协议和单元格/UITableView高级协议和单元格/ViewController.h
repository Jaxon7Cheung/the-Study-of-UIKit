//
//  ViewController.h
//  UITableView高级协议和单元格
//
//  Created by 张旭洋 on 2023/7/20.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
<UITableViewDelegate,
UITableViewDataSource>

//数据视图
@property (nonatomic, strong)UITableView* tableView;
//数据源
@property (nonatomic, strong)NSMutableArray* arrayData;

//添加导航按钮
@property (nonatomic, strong)UIBarButtonItem* btnEdit;
@property (nonatomic, strong)UIBarButtonItem* btnFinish;
@property (nonatomic, strong)UIBarButtonItem* btnDelete;
//设置编辑状态
@property (nonatomic)BOOL isEdit;

@end

