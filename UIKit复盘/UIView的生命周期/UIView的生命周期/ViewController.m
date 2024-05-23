//
//  ViewController.m
//  UIView的生命周期
//
//  Created by 张旭洋 on 2023/10/11.
//

#import "ViewController.h"
#import "TestView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    TestView* view1 = [[TestView alloc] init];
    view1.backgroundColor = [UIColor redColor];
    view1.frame = CGRectMake(100, 100, 100, 200);
    [self.view addSubview: view1];
    
//    UIView* view2 = [[UIView alloc] init];
//    view2.backgroundColor = [UIColor orangeColor];
//    view2.frame = CGRectMake(50, 50, 100, 200);
//    [self.view addSubview: view2];
    
    
}


@end
