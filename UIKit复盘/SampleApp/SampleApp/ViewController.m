//
//  ViewController.m
//  SampleApp
//
//  Created by 张旭洋 on 2023/8/10.
//

#import "ViewController.h"

@interface TestView : UIView
@end

@implementation TestView
//UIView完整生命周期的流程
- (instancetype)init {
    self = [super init];
    if (self) {
        
    }
    return self;
}

- (void)willMoveToSuperview:(nullable UIView *)newSuperview {
    [super willMoveToSuperview: newSuperview];
}
- (void)didMoveToSuperview {
    [super didMoveToSuperview];
}
- (void)willMoveToWindow:(nullable UIWindow *)newWindow {
    [super willMoveToWindow: newWindow];
}
- (void)didMoveToWindow {
    [super didMoveToWindow];
}

@end

@interface ViewController ()

@end

@implementation ViewController

- (instancetype)init {
    self = [super init];
    if (self) {
        
    }
    return self;
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear: YES];
}
- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear: YES];
}
- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear: YES];
}
- (void)viewDidDisappear:(BOOL)animated {
    [super viewDidDisappear: YES];
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    TestView* view = [[TestView alloc] init];
    view.backgroundColor = [UIColor redColor];
    view.frame = CGRectMake(150, 150, 100, 100);
    [self.view addSubview: view];
    
    UITapGestureRecognizer* gapGesture = [[UITapGestureRecognizer alloc] initWithTarget: self action: @selector(pushViewController)];
    [view addGestureRecognizer: gapGesture];
    
//    UIView* view2 = [[UIView alloc] init];
//    view2.backgroundColor = [UIColor greenColor];
//    view2.frame = CGRectMake(150, 150, 100, 100);
//    [self.view addSubview: view2];
}

- (void)pushViewController{
    UIViewController* viewController = [[UIViewController alloc] init];
    viewController.view.backgroundColor = [UIColor whiteColor];
    viewController.navigationItem.title = @"标题";
    viewController.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle: @"右侧按钮" style: UIBarButtonItemStylePlain target: self action: nil];
    viewController.navigationItem.rightBarButtonItem.tintColor = [UIColor redColor];
    
    [self.navigationController pushViewController: viewController animated: YES];
}


@end
