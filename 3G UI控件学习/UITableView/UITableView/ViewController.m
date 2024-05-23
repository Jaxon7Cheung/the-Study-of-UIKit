//
//  ViewController.m
//  UITableView
//
//  Created by 张旭洋 on 2023/7/19.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //创建数据视图
    //P1：数据视图的位置
    //P2：数据视图的风格
    //UITableViewStylePlain:普通风格
    //UITableViewStyleGrouped:分组风格
    self.tableView = [[UITableView alloc] initWithFrame: self.view.bounds style: UITableViewStyleGrouped];
    
    //设置数据视图的代理对象
    self.tableView.delegate = self;
    //设置数据视图的数据源代理对象
    self.tableView.dataSource = self;
    
    [self.view addSubview: self.tableView];
}

//获取每组元素的个数（行数）
//必须要实现的协议函数
//程序在显示数据视图时会调用此函数
//返回值：表示每组元素的个数
//P1：数据视图本身
//P2：哪一组需要的行数
- (NSInteger) tableView: (UITableView *)tableView numberOfRowsInSection: (NSInteger)section
{
    return 5;
}

//设置数据视图的组数
- (NSInteger) numberOfSectionsInTableView:(UITableView *)tableView
{
    return 3;
}

//创建单元格对象函数
- (UITableViewCell *)tableView: (UITableView *)tableView cellForRowAtIndexPath: (NSIndexPath *)indexPath
{
    NSString* cellStr = @"cell";
    
    UITableViewCell* cell = [self.tableView dequeueReusableCellWithIdentifier: cellStr];
    
    if (cell == nil) {
        //创建一个单元格对象
        //参数一：单元格的样式
        //参数二：单元格的复用标记
        cell = [[UITableViewCell alloc] initWithStyle: UITableViewCellStyleDefault reuseIdentifier: cellStr];
    }
    
    NSString* str = [NSString stringWithFormat: @"第%ld组，第%ld行", indexPath.section, indexPath.row];
    //将单元格的主文字内容赋值
    cell.textLabel.text = str;
    
    return cell;
}

@end
