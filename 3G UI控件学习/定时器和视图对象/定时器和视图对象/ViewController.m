//
//  ViewController.m
//  定时器和视图对象
//
//  Created by 张旭洋 on 2023/6/6.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

//属性和成员变量的同步
@synthesize timerView = _timerView;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    //启动定时器按钮
    UIButton* btn = [UIButton buttonWithType: UIButtonTypeRoundedRect];
    btn.frame = CGRectMake(100, 100, 80, 40);
    [btn setTitle: @"启动定时器" forState: UIControlStateNormal];
    [btn addTarget: self action: @selector(pressStart) forControlEvents: UIControlEventTouchUpInside];
    [self.view addSubview: btn];
    //停止定时器按钮
    UIButton* btnStop = [UIButton buttonWithType: UIButtonTypeRoundedRect];
    btnStop.frame = CGRectMake(100, 200, 80, 40);
    [btnStop setTitle: @"停止定时器" forState: UIControlStateNormal];
    [btnStop addTarget: self action: @selector(pressStop) forControlEvents: UIControlEventTouchUpInside];
    [self.view addSubview: btnStop];
    
    UIView* view = [[UIView alloc] init];
    view.frame = CGRectMake(0, 0, 80, 80);
    view.backgroundColor = [UIColor orangeColor];
    //view.alpha = 0.5;
    [self.view addSubview: view];
    
    //设置view的标签值
    //通过父亲视图对象以及view的标签值可以获得相应的视图对象
    view.tag = 101;
}

//按下开始按钮函数
- (void)pressStart {
    //NSTimer的类方法创建一个定时器并且启动这个定时器
    //P1：每隔多长时间调用定时器函数，以秒为单位
    //P2：表示实现定时器函数的对象（指针）
    //P3：定时器函数对象
    //P4：可以传入定时器函数中的一个参数，无参数可以传nil
    //P5：定时器是否重复操作，YES为重复，NO只完成一次函数调用
    //返回值为一个新建好的定时器对象
    if (!_timerView) {
        _timerView = [NSTimer scheduledTimerWithTimeInterval: 0.03 target: self selector: @selector(updateTimer:) userInfo: @"小明" repeats: YES];
    }
}

//定时器函数
//可以将定时器本身作为参数传入
- (void)updateTimer: (NSTimer*)timer {
    //userInfo是id类型
    NSLog(@"test!!! name = %@", timer.userInfo);
    
    //最好tag从100开始
    //创建一个UIView
    UIView* view = [self.view viewWithTag: 101];
    
    view.frame = CGRectMake(view.frame.origin.x + 1, view.frame.origin.y + 1, 80, 80);
    
}

//按下停止按钮时调用
- (void)pressStop {
    if (_timerView) {
        //停止定时器
        [_timerView invalidate];
        //NSLog(@"%@", _timerView);
        _timerView = nil;
    }
}
//可以水一篇博客了

@end
