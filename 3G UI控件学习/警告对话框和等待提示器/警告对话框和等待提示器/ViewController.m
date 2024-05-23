//
//  ViewController.m
//  警告对话框和等待提示器
//
//  Created by 张旭洋 on 2023/6/8.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

//实现属性和成员变量的同步
@synthesize alertView = _alertView;
@synthesize activityIndicator = _activityIndicator;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    for (int i = 0; i < 2; ++i) {
        UIButton* btn = [UIButton buttonWithType: UIButtonTypeRoundedRect];
        
        btn.frame = CGRectMake(100, 100 + 100 * i, 100, 40);
        
        if (i == 0) {
            [btn setTitle: @"警告对话框" forState: UIControlStateNormal];
        } else if (i == 1) {
            [btn setTitle: @"等待指示器" forState: UIControlStateNormal];
        }
        
        //方便button事件的使用
        btn.tag = 101 + i;
        
        [btn addTarget: self action: @selector(pressBtn:) forControlEvents: UIControlEventTouchUpInside];
        
        [self.view addSubview: btn];
    }
}

- (void)pressBtn: (UIButton*)btn {
    //警告对话框创建
    if (btn.tag == 101) {
        //创建警告对话框
        ///P1：对话框标题
        ///P2：提示信息
        //P3：处理按钮事件的代理对象
        //P4：取消按钮的文字
        //P5：其他按钮文字
        //P6....：添加其他按钮
        //PLast：表示按钮添加结束
        _alertView = [UIAlertController alertControllerWithTitle: @"警告" message: @"本机已被入侵，速速打钱！" preferredStyle: UIAlertControllerStyleAlert];
        
        //选项一、二、三
        UIAlertAction* sure = [UIAlertAction actionWithTitle: @"✅" style: UIAlertActionStyleDefault handler: ^(UIAlertAction * _Nonnull action) {
            NSLog(@"✅确定");
        }];
        UIAlertAction* cancel = [UIAlertAction actionWithTitle: @"😜" style: UIAlertActionStyleCancel handler: nil];
        UIAlertAction* weird = [UIAlertAction actionWithTitle: @"😂" style: UIAlertActionStyleDefault handler: ^(UIAlertAction * _Nonnull action) {
            NSLog(@"搞怪");
        }];
        
        //添加选项到视图_alertView
        [_alertView addAction: sure];
        [_alertView addAction: cancel];
        [_alertView addAction: weird];
        //显示对话框
        [self presentViewController: _alertView animated: YES completion: nil];
    //创建等待提示器
    } else if (btn.tag == 102) {
        //宽高不可变
        _activityIndicator = [[UIActivityIndicatorView alloc] initWithFrame: CGRectMake(100, 300, 80, 80)];
        
        //设定提示的风格：小灰，小白，大白
        _activityIndicator.activityIndicatorViewStyle = UIActivityIndicatorViewStyleMedium;
        
        /*
         UIActivityIndicatorViewStyleMedium  API_AVAILABLE(ios(13.0), tvos(13.0)) = 100,
         UIActivityIndicatorViewStyleLarge   API_AVAILABLE(ios(13.0), tvos(13.0)) = 101,
         
         UIActivityIndicatorViewStyleWhiteLarge API_DEPRECATED_WITH_REPLACEMENT("UIActivityIndicatorViewStyleLarge", ios(2.0, 13.0), tvos(9.0, 13.0)) = 0,
         UIActivityIndicatorViewStyleWhite API_DEPRECATED_WITH_REPLACEMENT("UIActivityIndicatorViewStyleMedium", ios(2.0, 13.0), tvos(9.0, 13.0)) = 1,
         UIActivityIndicatorViewStyleGray API_DEPRECATED_WITH_REPLACEMENT("UIActivityIndicatorViewStyleMedium", ios(2.0, 13.0)) API_UNAVAILABLE(tvos) = 2,
         */
        
        self.view.backgroundColor = [UIColor magentaColor];
        
        [self.view addSubview: _activityIndicator];
        
        //启动动画并显示
        [_activityIndicator startAnimating];
        
        //停止等待动画并隐藏
        [_activityIndicator stopAnimating];
    }
}

//当点击对话框的按钮时，调用此函数
//P1：对话框对象本身
//P2：按钮的索引
//- (void)alertView: (UIAlertView*)alertView clickedButtonAtIndex: (NSInteger)buttonIndex {
//    NSLog(@"index = %ld\n", buttonIndex);
//}
////对话框即将消失，此函数被调用
//- (void)alertView: (UIAlertView*)alertView willDismissWithButtonIndex: (NSInteger)buttonIndex {
//    NSLog(@"即将消失！");
//}
////对话框已经消失时，调用此函数
//- (void)alertView: (UIAlertView*)alertView didDismissWithButtonIndex:(NSInteger)buttonIndex {
//    NSLog(@"已经消失！");
//}

@end
