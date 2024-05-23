//
//  ViewController.m
//  UITableView协议
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
    //创建视图对象
    self.tableView = [[UITableView alloc] initWithFrame: self.view.bounds style: UITableViewStyleGrouped];
    //设置代理对象
    self.tableView.delegate = self;
    //设置数据代理对象
    self.tableView.dataSource = self;
    //数据视图显示
    [self.view addSubview: self.tableView];
    
    //创建一个可变数组
    self.arrayData = [[NSMutableArray alloc] init];
    
    for (int i = 'A'; i <= 'Z'; ++i) {
        //定义一个小数组
        NSMutableArray* arraySmall = [[NSMutableArray alloc] init];
        
        for (int j = 1; j <= 5; ++j) {
            NSString* str = [NSString stringWithFormat: @"%c%d", i, j];
            [arraySmall addObject: str];
        }
        //生成一个二维数组
        [self.arrayData addObject: arraySmall];
    }
    
}

//获取组数
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return self.arrayData.count;
}

//获取每组的元素个数
- (NSInteger)tableView: (UITableView *)tableView numberOfRowsInSection: (NSInteger)section
{
    NSInteger numRow = [[self.arrayData objectAtIndex: section] count];
    
    return numRow;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString* str = @"cell";
    
    UITableViewCell* cell = [self.tableView dequeueReusableCellWithIdentifier: str];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle: UITableViewCellStyleDefault reuseIdentifier: str];
    }
    
    cell.textLabel.text = self.arrayData[indexPath.section][indexPath.row];
    return cell;
}

//获取高度
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 100;
}
//获取头部高度
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 40;
}
//获取尾部高度
- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
    return 40;
}
//获取每组头部标题
- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    return @"头部标题";
}
//获取每组尾部标题
- (NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section
{
    return @"尾部标题";
}

@end
