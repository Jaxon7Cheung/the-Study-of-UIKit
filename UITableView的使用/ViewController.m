//
//  ViewController.m
//  UITableView的使用
//
//  Created by 张旭洋 on 2023/10/12.
//

#import "ViewController.h"

@interface ViewController () <UITableViewDataSource, UITableViewDelegate>

@end

@implementation ViewController

static int count = 0;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor systemMintColor];
    
    UITableView* tableView = [[UITableView alloc] initWithFrame: self.view.bounds];
    
    tableView.dataSource = self;
    
    tableView.delegate = self;
    
    [self.view addSubview: tableView];
}

//每当滚动tableView有cell要进入可视区时，系统都会自动回调此方法
- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    UITableViewCell* cell = [tableView dequeueReusableCellWithIdentifier: @"id"];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle: UITableViewCellStyleSubtitle reuseIdentifier: @"id"];
        count++;
    }
    
    cell.textLabel.text = [NSString stringWithFormat: @"主标题 - %@", @(indexPath.row)];
    cell.detailTextLabel.text = @"副标题";
    cell.imageView.image = [UIImage imageNamed: @"image.png"];
    
    return cell;
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 66;
}

//delegate
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 100;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    UIViewController* viewController = [[UIViewController alloc] init];
    viewController.view.backgroundColor = [UIColor systemMintColor];
    //viewController.view.largeContentTitle = [NSString stringWithFormat: @"%@", @(indexPath.row)];
    [self presentViewController: viewController animated: YES completion: nil];
}

- (nullable NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    return @"头标题";
}
- (nullable NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section {
    return @"尾标题";
}
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return 75;
}
- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section {
    return 65;
}

//- (nullable NSArray<NSString *> *)sectionIndexTitlesForTableView:(UITableView *)tableView;  

@end
