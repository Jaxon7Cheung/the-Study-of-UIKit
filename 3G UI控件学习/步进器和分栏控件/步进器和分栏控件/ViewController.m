//
//  ViewController.m
//  步进器和分栏控件
//
//  Created by 张旭洋 on 2023/6/8.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize stepper = _stepper;
@synthesize segControl = _segControl;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //创建步进器对象
    _stepper = [[UIStepper alloc] init];
    
    //设置位置，宽高不能变更
    _stepper.frame = CGRectMake(100, 100, 80, 40);
    
    //设置步进器的最小值
    _stepper.minimumValue = 0;
    
    //设置步进器的最大值
    _stepper.maximumValue = 100;
    
    //设置步进器的当前值，默认值为0
    _stepper.value = 10;
    
    //设置步进值，每次向前或向后步进的步伐值
    _stepper.stepValue = 1;
    
    //是否可以重复响应事件操作
    //自动重复功能，YES可以通过长按持续改变状态
    _stepper.autorepeat = YES;
    
    //是否将步进结果通过事件函数响应出来
    _stepper.continuous = YES;
    
    //添加事件函数
    //P1：实现函数体
    //P2：函数体
    //P3：事件值改变状态
    [_stepper addTarget: self action: @selector(stepChange) forControlEvents:  UIControlEventValueChanged];
    
    [self.view addSubview: _stepper];
    
    //创建分栏控件
    _segControl = [[UISegmentedControl alloc] init];
    
    //设置控件位置，宽度可变，高度不可变
    _segControl.frame = CGRectMake(10, 200, 350, 40);
    
    //添加一个按钮元素
    //P1：按钮选项文字
    //P2：按钮的索引位置
    //P3：是否有插入的动画效果
    [_segControl insertSegmentWithTitle: @"0元" atIndex: 0 animated: YES];
    [_segControl insertSegmentWithTitle: @"5元" atIndex: 1 animated: YES];
    [_segControl insertSegmentWithTitle: @"10元" atIndex: 2 animated: YES];
    [_segControl insertSegmentWithTitle: @"30元" atIndex: 0 animated: YES];
    
    //当前默认按钮索引设置
    _segControl.selectedSegmentIndex = 0;
    
    [_segControl addTarget: self action: @selector(segChange) forControlEvents: UIControlEventValueChanged];
    
    [self.view addSubview: _segControl];
}

- (void)segChange {
    NSLog(@"%ld", (long)_segControl.selectedSegmentIndex);
}

- (void)stepChange {
    NSLog(@"step press! value = %f", _stepper.value);
}


@end
