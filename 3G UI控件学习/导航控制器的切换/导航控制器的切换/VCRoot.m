//
//  VCRoot.m
//  导航控制器的切换
//
//  Created by 张旭洋 on 2023/7/17.
//

#import "VCRoot.h"
#import "VCSecond.h"

@interface VCRoot ()

@end

@implementation VCRoot

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //设置导航栏的透明度
    //默认透明度为YES：可透明的
    //NO：使导航栏不透明
    self.navigationController.navigationBar.translucent = YES;
    
    //self.navigationController.navigationBar.barStyle = UIStatusBarStyleDefault;
    
    self.view.backgroundColor = [UIColor blueColor];
    
    self.title = @"根视图";
    
    UIBarButtonItem* next = [[UIBarButtonItem alloc] initWithTitle: @"🫱" style: UIBarButtonItemStylePlain target: self action: @selector(pressNext)];
    
    self.navigationItem.rightBarButtonItem = next;
}

- (void)pressNext
{
    //创建新的视图控制器
    VCSecond* vcSecond = [[VCSecond alloc] init];
    
    //使用当前视图控制器的导航控制器对象
    [self.navigationController pushViewController: vcSecond animated: YES];
    
//    //创建新的视图控制器
//    NewViewController* newViewController = [[newViewController alloc] init];
//    //推出新的视图
//    [self.navigationController pushViewController: newViewController animated: YES];
//    //返回上一层级
//    [self.navigationController popViewControllerAnimated: YES];
//    //返回根视图
//    [self.navigationController popToRootViewControllerAnimated: YES];
//    //返回指定视图
//    [self.navigationController popToViewController: newViewController animated: YES];
//    //返回指定级数
//    [self.navigationController popToViewController: [self.navigationController.viewControllers objectAtIndex: 0 ] animated: YES];
    
//    //创建新的视图
//    NewViewController* newViewController = [[newViewController alloc] init];
//
//    //推出新的视图
//    [self presentViewController: newViewOCntroller animated: YES completion: nil];
//    //返回上一层级
//    [self dismissViewControllerAnimated: YES completion: nil];
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
