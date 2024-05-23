 //
//  ViewController.m
//  Navigation的基础交互
//
//  Created by 张旭洋 on 2023/10/12.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor yellowColor];
    UIView* view = [[UIView alloc] init];
    view.backgroundColor = [UIColor redColor];
    view.frame = CGRectMake(150, 150, 100, 200);
    [self.view addSubview: view];
    
    UITapGestureRecognizer* tapGesture = [[UITapGestureRecognizer alloc] initWithTarget: self action: @selector(pushController)];
    [view addGestureRecognizer: tapGesture];
    
}

- (void)pushController {
    UIViewController* viewController = [[UIViewController alloc] init];
    viewController.view.backgroundColor = [UIColor whiteColor];
    viewController.navigationItem.title = @"内容";  //titleView
    viewController.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle: @"右侧" style: UIBarButtonItemStylePlain target: self action: nil];
    viewController.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithTitle: @"返回" style: UIBarButtonItemStylePlain target: self action: @selector(returnButton)];
    
    [self.navigationController pushViewController: viewController animated: YES];
}

- (void)returnButton {
    [self.navigationController popViewControllerAnimated: YES];
}

@end
