//
//  VCThird.m
//  导航控制器的切换
//
//  Created by 张旭洋 on 2023/7/17.
//

#import "VCThird.h"

@interface VCThird ()

@end

@implementation VCThird

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor orangeColor];
    self.title = @"视图三";
    
    UIBarButtonItem* btnLeft = [[UIBarButtonItem alloc] initWithTitle: @"🫲" style: UIBarButtonItemStylePlain target: self action: @selector(pressBack)];
    UIBarButtonItem* btnRight = [[UIBarButtonItem alloc] initWithTitle: @"✋" style: UIBarButtonItemStylePlain target: self action: @selector(pressRoot)];
    
    //当自己设定左侧按钮时
    //返回按钮会被左侧按钮替换
    self.navigationItem.leftBarButtonItem = btnLeft;
    self.navigationItem.rightBarButtonItem = btnRight;
}

- (void)pressRoot
{
    //直接返回到根视图
    [self.navigationController popToRootViewControllerAnimated: YES];
}

- (void)pressBack
{
    //将当前的视图控制器弹出，返回到上一级界面
    [self.navigationController popViewControllerAnimated: YES];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
