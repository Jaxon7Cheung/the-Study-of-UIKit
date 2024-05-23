//
//  ViewController.m
//  视图控制器的使用
//
//  Created by 张旭洋 on 2023/6/1.
//

#import "ViewController.h"
#import "ViewC02.h"

@interface ViewController ()

@end

@implementation ViewController

//当屏幕被点击时，调用此函数
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {

    //创建视图控制器02
    ViewC02* vc = [[ViewC02 alloc] init];

    //显示一个新的视图控制器在屏幕上
    //P1：新的视图控制器对象
    //P2：使用动画切换动画效果
    //P3：切换结束后功能调用，不需要传nil值即可
    vc.modalPresentationStyle = UIModalPresentationFullScreen;
    
    [self presentViewController: vc animated: YES completion: nil];
}

//第一次程序加载视图时调用
//只会加载一次
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor blueColor];
    
    NSLog(@"viewDidLoad!第一次加载视图！");
}

//当视图控制器的视图即将显示时，调用此函数
//视图分为：1.显示前（不显示） 2.正在显示状态 3.已经被隐藏
//参数：表示是否用动画切换后显示
//每一次视图显示时都要被调用
- (void)viewWillAppear: (BOOL)animated {
    NSLog(@"viewWillAppear,视图即将显示！");
}

//视图即将消失时，调用此函数
//参数：表示是否用动画切换后消失
//当前的状态：视图还是显示在屏幕上的
- (void)viewWillDisappear: (BOOL)animated {
    NSLog(@"viewWillDisappear,视图即将消失！");
}

//当视图已经显示到屏幕后瞬间调用此函数
//参数：表示是否用动画切换显示
//当前状态已经显示到屏幕上了
- (void)viewDidAppear: (BOOL)animated {
    NSLog(@"viewDidAppear,视图已经显示！");
}

//当前视图已经从屏幕上消失
//参数：表示是否用动画切换显示
//当前状态控制视图已经从屏幕上消失
- (void)viewDidDisappear: (BOOL)animated {
    NSLog(@"viewDidDisappear,视图已经消失！");
}



@end
