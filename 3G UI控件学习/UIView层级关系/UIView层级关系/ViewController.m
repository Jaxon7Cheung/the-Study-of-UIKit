//
//  ViewController.m
//  UIView层级关系
//
//  Created by 张旭洋 on 2023/5/31.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //创建三个视图
    UIView* view01 = [[UIView alloc] init];
    view01.frame = CGRectMake(100, 100, 150, 150);
    view01.backgroundColor = [UIColor blueColor];
    UIView* view02 = [[UIView alloc] init];
    view02.backgroundColor = [UIColor orangeColor];
    view02.frame = CGRectMake(125, 125, 150, 150);
    UIView* view03 = [[UIView alloc] init];
    view03.frame = CGRectMake(150, 150, 150, 150);
    view03.backgroundColor = [UIColor greenColor];
    
    //将三个视图对象显示到屏幕上，并且添加到父亲视图上
    //哪一个视图先添加到父亲视图上，就先绘制哪一个视图
    //哪一个视图被最后一个添加到父亲视图中，就最后绘制哪一个视图
    [self.view addSubview: view01];
    [self.view addSubview: view02];
    [self.view addSubview: view03];
    
    //将某一个视图调整到最前面显示
    //参数：UIView对象，调整哪一个视图到最前方
    [self.view bringSubviewToFront: view01];

    //将某一个视图调整到最后面显示
    //参数：UIView对象，调整哪一个视图到最后方
    [self.view sendSubviewToBack: view03];

    //subviews管理所有self.view的子视图的数组
    UIView* viewFront = self.view.subviews[2];

    //[view01 removeFromSuperview];

    UIView* viewBack = self.view.subviews[0];

    if (viewBack == view03 && viewFront == view01) {
        NSLog(@"相等！");
    } else {
        NSLog(@"不相等");
    }
    
    view01.alpha = 0.3;
}

@end
