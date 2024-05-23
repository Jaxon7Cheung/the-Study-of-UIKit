//
//  ViewController.m
//  UIViewController的生命周期
//
//  Created by 张旭洋 on 2023/10/11.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (instancetype)init {
    self = [super init];
    if (self) {
        
    }
    return self;
}

//Default View创建
//ViewContoller中所有view都已经准备好
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UIView* view = [[UIView alloc] init];
    view.backgroundColor = [UIColor orangeColor];
    view.frame = CGRectMake(100, 100, 150, 250);
    [self.view addSubview: view];
    
}

//默认视图及其包含的子视图即将在屏幕中出现
- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear: animated];
}    // Called when the view is about to made visible. Default does nothing

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear: animated];
}     // Called when the view has been fully transitioned onto the screen. Default does nothing

//Controller从屏幕中消失不见时（对应一些销毁的逻辑）
- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear: animated];
} // Called when the view is dismissed, covered or otherwise hidden. Default does nothing

- (void)viewDidDisappear:(BOOL)animated {
    [super viewDidDisappear: animated];
}  // Called after the view was dismissed, covered or otherwise hidden. Default does nothing

- (void) dealloc {
    
}

@end
