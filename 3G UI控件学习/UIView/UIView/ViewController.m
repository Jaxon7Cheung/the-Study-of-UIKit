//
//  ViewController.m
//  UIView
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
    
    //创建一个UIView对象
    //UIView是iOS中的视图对象
    //显示在屏幕上的所有的对象的基础类
    //所有显示在屏幕上的对象一定都继承于UIView
    //屏幕上能看到的对象都是UIView的子类
    UIView* view = [[UIView alloc] init];
    
    //设置UIView的位置
    view.frame = CGRectMake(100, 100, 100, 200);
    //蓝绿色 青色
    view.backgroundColor = [UIColor cyanColor];
    
    //将新建的视图添加到父亲视图上
    //1：将新建的视图显示到屏幕上
    //2：将视图作为父亲视图管理起来
    [self.view addSubview: view];
    
    //是否隐藏视图对象
    //YES：不显示
    //NO：显示，默认值为NO
    view.hidden = NO;
    
    //设置视图的透明度
    //alpha = 1：不透明
    //alpha = 0：透明
    //alpha = 0.5：半透明
    view.alpha = 0.2;
    
    self.view.backgroundColor = [UIColor lightGrayColor];
    
    //设置是否显示不透明
    //默认值是YES，表示完全不透明，即ta会遮盖在其下面的任何视图上，包括父视图
    //opaque（不透明）：勾选该选项的控件,将通知iOS系统,该控件后的任何内容都无需绘制——这样iOS系统的绘图方法可以执行一些优化来加速绘图。——即使该控件的alpha值小于1.0,系统也无须绘制该控件后面的内容。
    view.opaque = YES;
    
    //将自己从父亲视图删除掉
    //1：从父亲视图的管理中删除
    //2：不会显示在屏幕上
    //[view removeFromSuperview];
    
}


@end
