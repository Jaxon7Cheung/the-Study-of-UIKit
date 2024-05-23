//
//  ViewController.m
//  UIScrollView
//
//  Created by 张旭洋 on 2023/7/15.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //定义并创建一个滚动视图
    //可以对视图内容进行滚屏查看功能
    UIScrollView* sv = [[UIScrollView alloc] init];
    
    //设置滚动视图的位置，使用矩形来定位视图位置
    sv.frame = CGRectMake(0, 0, 320, 576);
    
    //是否按照整页来滚动视图
    sv.pagingEnabled = YES;
    //是否可以开启滚动效果
    sv.scrollEnabled = YES;
    //设置画布的大小，画布显示在滚动视图内部，一般大于frame的大小
    sv.contentSize = CGSizeMake(320 * 5, 576);
    //是否可以边缘弹动效果
    sv.bounces = YES;
    //开启横向弹动效果
    sv.alwaysBounceHorizontal = YES;
    //开启纵向弹动效果
    sv.alwaysBounceVertical = NO;
    //显示横向滚动条
    sv.showsHorizontalScrollIndicator = YES;
    //显示纵向滚动条
    //若画布大小小于frame大小，则滚动条也不会出现
    sv.showsVerticalScrollIndicator = NO;
    //设置背景颜色
    sv.backgroundColor = [UIColor systemMintColor];
    
    //使用循环创建5张图片视图
    for (int i = 0; i < 5; ++i) {
        NSString* strName = [NSString stringWithFormat: @"%d.jpg", i + 1];
        
        UIImage* image = [UIImage imageNamed: strName];
        
        UIImageView* iView = [[UIImageView alloc] initWithImage: image];
        
        iView.frame = CGRectMake(320 * i, 0, 320, 576);
        
        [sv addSubview: iView];
    }
    
    [self.view addSubview: sv];
}


@end
