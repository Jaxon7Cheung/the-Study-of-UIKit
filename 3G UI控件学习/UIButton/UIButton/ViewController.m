//
//  ViewController.m
//  UIButton
//
//  Created by 张旭洋 on 2023/5/28.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

//创建一个普通按钮
- (void)createUIRectButton {
    //创建一个btn对象，根据对象类型来创建btn
    //圆角类型btn：UIButtonTypeRoundedRect
    //通过类方法来创建buttonWithType：类名+方法名, 而不是alloc
    UIButton* btn = [UIButton buttonWithType: UIButtonTypeRoundedRect];
    
    //设置button按钮的位置
    btn.frame = CGRectMake(100, 100, 100, 50);
    
    //设置按钮的文字内容
    //@parameter
    //P1：字符串类型，显示到按钮上的文字
    //P2：设置文字显示的状态类型：UIControlStateNormal，正常状态
    [btn setTitle: @"按钮" forState: UIControlStateNormal];
    
    //P1：显示的文字
    //P2：显示文字的状态：UIControlStateHighlighted，按下状态
    [btn setTitle: @"按钮按下" forState: UIControlStateHighlighted];
    
    //背景颜色
    btn.backgroundColor = [UIColor systemPinkColor];
    
    //设置文字显示的颜色
    //P1：颜色
    //P2：状态
    [btn setTitleColor: [UIColor whiteColor] forState: UIControlStateNormal];
    
    //设置按下状态的颜色
    [btn setTitleColor: [UIColor blackColor] forState: UIControlStateHighlighted];
    
    //设置按钮的风格颜色（色调）
    //tint没有title优先级高，tint的所有状态都为白色
    [btn setTintColor: [UIColor blueColor]];
    
    //titleLabel:UILabel控件
    btn.titleLabel.font = [UIFont systemFontOfSize: 18];

    //添加到视图中并显示
    [self.view addSubview: btn];
}

//创建一个可以显示图片的按钮
- (void)createImageBtn {
    //创建一个自定义类型的btn
    UIButton* btnImage = [UIButton buttonWithType: UIButtonTypeCustom];
    
    btnImage.frame = CGRectMake(50, 275, 275, 275);
    
    UIImage* icon01 = [UIImage imageNamed: @"0069mAlrly1gkmn4wspytj31kw1kwdoz.jpg"];
    UIImage* icon02 = [UIImage imageNamed: @"0069mAlrly1gkmn4uk6g5j31kw1kw4a9.jpg"];
    
    //设置按钮图片方法设置
    //P1：显示的图片对象
    //P2：控件的状态
    [btnImage setImage: icon01 forState: UIControlStateNormal];
    
    [btnImage setImage: icon02 forState: UIControlStateHighlighted];
    
    //添加到视图中并显示
    [self.view addSubview: btnImage];
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self createImageBtn];
    [self createUIRectButton];
}


@end
