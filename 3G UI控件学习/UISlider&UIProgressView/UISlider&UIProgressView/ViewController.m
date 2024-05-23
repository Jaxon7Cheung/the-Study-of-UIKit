//
//  ViewController.m
//  UISlider&UIProgressView
//
//  Created by 张旭洋 on 2023/6/7.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize slider = _slider;
@synthesize pView = _progressView;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //进度条的创建
    _progressView = [[UIProgressView alloc] init];
    
    //进度条的位置
    //进度条的高度是不可变化的
    _progressView.frame = CGRectMake(100, 100, 200, 40);
    
    //设置进度条的风格颜色
    //默认是蓝色
    _progressView.progressTintColor = [UIColor systemYellowColor];
    
    _progressView.trackTintColor = [UIColor darkGrayColor];
    
    //设置进度条的进度值
    //范围0~1，最小值为0，最大值为1
    _progressView.progress  = 0.7;
    
    //设置进度条的风格特征
    _progressView.progressViewStyle = UIProgressViewStyleDefault;
    
    [self.view addSubview: _progressView];
    
    
    //创建滑动条对象
    _slider = [[UISlider alloc] init];
    
    //滑动条的位置
    //滑动条的高度是不可变化的
    _slider.frame = CGRectMake(10, 200, 200, 80);
    
    //设置滑动条最大值
    _slider.maximumValue = 100;
    //设置滑动条最小值，可以为负值
    _slider.minimumValue = -100;
    
    //设置滑动条的滑块的位置float值
    _slider.value = 0;
    
    //左侧滑条背景颜色，默认蓝色
    _slider.minimumTrackTintColor = [UIColor systemBlueColor];
    //右侧滑条背景颜色，默认灰色
    _slider.maximumTrackTintColor = [UIColor lightGrayColor];
    //设置滑块的颜色
    _slider.thumbTintColor = [UIColor systemMintColor];
    
    //对滑动条添加事件函数
    [_slider addTarget: self action: @selector(pressSlider) forControlEvents: UIControlEventValueChanged];
    
    [self.view addSubview: _slider];
}

- (void)pressSlider {
    //范围都在0~1的情况下，赋给进度条的进度值
    //_progressView.progress = _slider.value;
    
    //若范围不在0~1，运用以下算法
    _progressView.progress = (_slider.value - _slider.minimumValue) / (_slider.maximumValue - _slider.minimumValue);
    NSLog(@"value = %f", _slider.value);
}

@end
