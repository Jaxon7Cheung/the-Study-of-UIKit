//
//  ViewController.m
//  UITableView高级协议和单元格
//
//  Created by 张旭洋 on 2023/7/20.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.tableView = [[UITableView alloc] initWithFrame: self.view.bounds style: UITableViewStylePlain];
    
    //自动调整子视图的大小
    self.tableView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    
    //设置代理
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    
    //数据视图的头部视图的设定
    self.tableView.tableHeaderView = nil;
    //数据视图的尾部视图的设定
    self.tableView.tableFooterView = nil;
    
    [self.view addSubview: self.tableView];
    
    //初始化数据源数组
    self.arrayData = [[NSMutableArray alloc] init];
    
    for (int i = 1; i < 20; ++i) {
        NSString* str = [NSString stringWithFormat: @"A %d", i];
        
        [self.arrayData addObject: str];
    }
    
    //当数据的数据源发生变化时，
    //更新数据视图，重新加载数据
    [self.tableView reloadData];
    
    [self createBtn];
    
}

- (void)createBtn
{
    self.view.backgroundColor = [UIColor blackColor];
    self.isEdit = NO;
    
    //创建功能按钮
    self.btnEdit = [[UIBarButtonItem alloc] initWithTitle: @"edit" style: UIBarButtonItemStylePlain target: self action: @selector(pressEdit)];
    self.btnFinish = [[UIBarButtonItem alloc] initWithTitle: @"finish" style: UIBarButtonItemStylePlain target: self action: @selector(pressFinish)];
    //self.btnDelete = [[UIBarButtonItem alloc] initWithTitle: @"delete" style: UIBarButtonItemStylePlain target: self action: @selector(pressDelete)];
    
    self.navigationItem.rightBarButtonItem = self.btnEdit;
}

//可以显示编辑状态，当手指在单元格上移动时
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    //删除数据源对应的数据
    [self.arrayData removeObjectAtIndex: indexPath.row];
    //数据源更新
    [self.tableView reloadData];
    NSLog(@"delete!");
}

//选中单元格调用此协议函数
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"选中单元格！%ld, %ld", indexPath.section, indexPath.row);
}

//取消选中时调用的协议函数
- (void)tableView:(UITableView *)tableView didDeselectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"取消选中单元格！%ld, %ld", indexPath.section, indexPath.row);
}

//单元格行显示效果协议
- (UITableViewCellEditingStyle)tableView: (UITableView *)tableView editingStyleForRowAtIndexPath:(nonnull NSIndexPath *)indexPath
{
    //UITableViewCellEditingStyleDelete
    //UITableViewCellEditingStyleInsert
    //UITableViewCellEditingStyleNone
    //多选状态
    //UITableViewCellEditingStyleDelete | UITableViewCellEdtingStyleInsert
    //默认为删除
    return UITableViewCellEditingStyleDelete;
}

- (void)pressEdit
{
    self.isEdit = YES;
    self.navigationItem.rightBarButtonItem = self.btnFinish;
    [self.tableView setEditing: YES];
    self.navigationItem.leftBarButtonItem = self.btnDelete;
}

- (void)pressFinish
{
    self.isEdit = NO;
    self.navigationItem.rightBarButtonItem = self.btnEdit;
    [self.tableView setEditing: NO];
    self.navigationItem.leftBarButtonItem = nil;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.arrayData.count;
}

//- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
//{
//    return 1;
//}

//cell.label???

- (UITableViewCell *)tableView: (UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath
{
    NSString* strID = @"ID";
    
    //尝试获取可以复用的单元格
    //如果得不到，返回为nil
    UITableViewCell* cell = [self.tableView dequeueReusableCellWithIdentifier: strID];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle: UITableViewCellStyleSubtitle reuseIdentifier: strID];
    }
    //单元格文字赋值
    cell.textLabel.text = [self.arrayData objectAtIndex: indexPath.row];
    //设置子文字标题
    cell.detailTextLabel.text = @"子标题";
    
    NSString* str = [NSString stringWithFormat: @"%ld.png", indexPath.row % 8 + 1];
    UIImage* image = [UIImage imageNamed: str];
    //设置默认的图标信息
    cell.imageView.image = image;
    
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 60;
}




@end
