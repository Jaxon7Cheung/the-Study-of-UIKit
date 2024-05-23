//
//  VCSecond.m
//  导航控制器的切换
//
//  Created by 张旭洋 on 2023/7/17.
//

#import "VCSecond.h"
#import "VCThird.h"

@interface VCSecond ()

@end

@implementation VCSecond

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor greenColor];
    
    self.title = @"视图二";
    
    UIBarButtonItem* btnNext = [[UIBarButtonItem alloc] initWithTitle: @"🫱" style:UIBarButtonItemStylePlain target: self action: @selector(pressNext)];
    
    self.navigationItem.rightBarButtonItem = btnNext;
}

- (void)pressNext
{
    VCThird* vc = [[VCThird alloc] init];
    
    //推入第三个视图控制器
    [self.navigationController pushViewController: vc animated: YES];
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
