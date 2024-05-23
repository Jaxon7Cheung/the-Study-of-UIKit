//
//  ViewController.m
//  UILabel
//
//  Created by 张旭洋 on 2023/5/28.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

//创建UI控件函数
- (void)createUI {
    //定义并且创建一个UILabel对象
    //UILabel是可以显示在屏幕上并且可以显示文字的一种UI视图
    UILabel* label = [[UILabel alloc] init];
    
    //显示文字的赋值
    label.text = @"嗯 爱慕，世界！McKevince";
    
    //设定label的显示位置
    label.frame = CGRectMake(100, 300, 266, 120);
    
    //设置label的背景颜色，clear表示透明
    label.backgroundColor = [UIColor systemPinkColor];
    
    //self.view.backgroundColor = [UIColor systemPinkColor];  //clear显黑

    //将label显示到屏幕上
    [self.view addSubview: label];
    
    //设置label文字的大小，使用系统默认文字，大小为24
    label.font = [UIFont systemFontOfSize: 24];
    
    //设置label文字的颜色
    label.textColor = [UIColor purpleColor];
    
    //label的高级属性
    //设定阴影的颜色
    label.shadowColor = [UIColor grayColor];
    //设置阴影的偏移位置
    label.shadowOffset = CGSizeMake(0, 3);
    
    //设置text文字的对齐模式，默认为靠左对齐
    label.textAlignment = NSTextAlignmentNatural;
    
    //设置label文字显示的行数，默认值为：1
    //其他的大于零的行数，文字会尽量按照设定行数来显示
    //如果值为：0，iOS会对文字自动计算所需要的行数，按照需要的行数来显示文字
    label.numberOfLines = 0;
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //调用创建UI函数
    [self createUI];
}


@end
