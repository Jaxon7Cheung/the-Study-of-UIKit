//
//  VCFirst.m
//  分栏控制器
//
//  Created by 张旭洋 on 2023/7/17.
//

#import "VCFirst.h"

@interface VCFirst ()

@end

@implementation VCFirst

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //创建一个分栏按钮对象
    //P1：文字
    //P2：显示图片图标
    //P3：设置按钮的tag
    //UITabBarItem* tabBarItem = [[UITabBarItem alloc] initWithTitle: @"111" image: nil tag: 101];
    //根据系统风格创建分栏按钮🔘
    //P1：系统风格设定
    UITabBarItem* tabBarItem = [[UITabBarItem alloc] initWithTabBarSystemItem: UITabBarSystemItemFavorites tag: 101];
    
    //按钮右上角的提示信息💻
    //通常用来提示未读消息
    tabBarItem.badgeValue = @"99+";
    
    self.tabBarItem = tabBarItem;
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
