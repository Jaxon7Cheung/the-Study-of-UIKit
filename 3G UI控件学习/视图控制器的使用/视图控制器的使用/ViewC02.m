//
//  ViewC02.m
//  视图控制器的使用
//
//  Created by 张旭洋 on 2023/6/6.
//

#import "ViewC02.h"

@interface ViewC02 ()

@end

@implementation ViewC02

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //控制器02的颜色为橙色
    self.view.backgroundColor = [UIColor orangeColor];
}

//点击当前控制器02的界面屏幕时
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    //使当前的控制器消失掉
    //P1：是否有动画效果
    //P2：结束后是否调用功能block块操作
    [self dismissViewControllerAnimated: YES completion: nil];
}


//- (void)viewWillAppear: (BOOL)animated {
//    NSLog(@"viewWillAppear,视图02即将显示！");
//}
//
//- (void)viewWillDisappear: (BOOL)animated {
//    NSLog(@"viewWillDisappear,视图02即将消失！");
//}
//
//- (void)viewDidAppear: (BOOL)animated {
//    NSLog(@"viewDidAppear,视图02已经显示！");
//}
//
//- (void)viewDidDisappear: (BOOL)animated {
//    NSLog(@"viewDidDisappear,视图02已经消失！");
//}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
