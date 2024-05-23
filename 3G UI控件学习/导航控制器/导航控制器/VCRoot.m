//
//  VCRoot.m
//  导航控制器
//
//  Created by 张旭洋 on 2023/7/17.
//

#import "VCRoot.h"

@interface VCRoot ()

@end

@implementation VCRoot

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor orangeColor];
    
    //设置导航栏的标题文字
    self.title = @"根视图";
    //设置导航元素项目的标题
    //如果没有设置navigationItem.title，为nil，系统会使用self.title作为标题
    //如果navigationItem.title不为空，将navigationItem.title设置为标题内容
    self.navigationItem.title = @"Title";
    
    //创建一个导航栏左侧按钮
    //根据title文字来创建按钮
    //P1：按钮上的文字
    //P2：按钮风格
    //P3：事件拥有者
    //P4：按钮事件
    UIBarButtonItem* leftBtn = [[UIBarButtonItem alloc] initWithTitle: @"🫲" style: UIBarButtonItemStyleDone target: self action: @selector (pressLeft)];
    
    self.navigationItem.leftBarButtonItem = leftBtn;
    
    //创建一个导航栏左侧按钮
    //根据系统风格来创建按钮
    //P1：按钮风格
    //P2：事件拥有者
    //P3：按钮事件
    UIBarButtonItem* rightBtn = [[UIBarButtonItem alloc] initWithBarButtonSystemItem: UIBarButtonSystemItemBookmarks target: self action: @selector(pressRight)];
    
    self.navigationItem.rightBarButtonItem = rightBtn;
    
    //标签对象
    UILabel* label = [[UILabel alloc] initWithFrame: CGRectMake(10, 10, 50, 40)];
    label.text = @"test";
    
    label.textAlignment = NSTextAlignmentCenter;
    label.textColor = [UIColor lightTextColor];
    
    //将任何类型的控件添加到导航按钮的方法
    UIBarButtonItem* item03 = [[UIBarButtonItem alloc] initWithCustomView: label];
    //创建按钮数组
    NSArray* arrayBtn = [NSArray arrayWithObjects: rightBtn, item03, nil];
    
    //将右侧按钮数组赋值
    self.navigationItem.rightBarButtonItems = arrayBtn;
}

- (void)pressLeft
{
    NSLog(@"左侧按钮被按下!");
}

- (void)pressRight
{
    NSLog(@"右侧按钮被按下");
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
