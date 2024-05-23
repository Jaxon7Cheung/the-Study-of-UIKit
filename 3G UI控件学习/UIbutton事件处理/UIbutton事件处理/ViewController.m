//
//  ViewController.m
//  UIbutton事件处理
//
//  Created by 张旭洋 on 2023/5/29.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

//创建按钮函数
- (void)createBtn {
    //创建圆角按钮
    UIButton* btn01 = [UIButton buttonWithType: UIButtonTypeRoundedRect];
    btn01.frame = CGRectMake(100, 100, 80, 40);
    [btn01 setTitle: @"按钮01" forState: UIControlStateNormal];
    [btn01 setTitleColor: [UIColor purpleColor] forState: UIControlStateNormal];
    btn01.backgroundColor = [UIColor redColor];
    
    //向按钮添加事件函数
    //P1：“谁”来实现事件函数，实现的对象就是”谁“
    //P2：事件函数
    //P3：UIControlEvent：事件处理函数类型
    //UIControlEventTouchUpInside：当手指离开屏幕时并且手指的位置在按钮范围内触发事件函数（当按钮弹起时）
    //UIControlEventTouchUpOutside：手指离开屏幕时在按钮范围外触发事件函数
    //UIControlEventTouchDown：指当我们的手指触碰到屏幕上时
    [btn01 addTarget: self action: @selector(pressBtn: ) forControlEvents: UIControlEventTouchUpInside];
    
    //触碰时调用事件函数
    [btn01 addTarget: self action: @selector(touchDown) forControlEvents: UIControlEventTouchDown];
    
    [self.view addSubview: btn01];
    
    
    UIButton* btn02 = [UIButton buttonWithType: UIButtonTypeRoundedRect];
    btn02.frame = CGRectMake(200, 200, 80, 40);
    
    [btn02 setTitle: @"按钮02" forState: UIControlStateNormal];
    
    //是可以多个按钮使用同一个事件函数来处理不同按钮的事件
    [btn02 addTarget: self action: @selector(pressBtn:) forControlEvents: UIControlEventTouchUpInside];
    
    [self.view addSubview: btn02];
    
    btn01.tag = 1;
    btn02.tag = 2;
}

- (void)pressBtn02 {
    NSLog(@"按钮2被触发！");
}

- (void)touchDown {
    NSLog(@"按钮被触碰！");
}

//iOS中带参与不带参是两个函数
//参数为调用此函数按钮对象本身
- (void)pressBtn: (UIButton*)btn {
    if (btn.tag == 1) {
        NSLog(@"btn 01 pressed");
    } else if (btn.tag == 2) {
        NSLog(@"btn 02 pressed");
    }
}

//- (void)pressBtn {
//    NSLog(@"按钮被按下！");
//}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self createBtn];
}


@end
