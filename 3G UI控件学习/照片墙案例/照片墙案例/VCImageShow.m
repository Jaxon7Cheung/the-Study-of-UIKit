//
//  VCImageShow.m
//  照片墙案例
//
//  Created by 张旭洋 on 2023/7/17.
//

#import "VCImageShow.h"

@interface VCImageShow ()

@end

@implementation VCImageShow

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.title = @"图片展示";
    
    _imageView = [[UIImageView alloc] init];
    _imageView.frame = CGRectMake(0, 0, 320, 480);
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    //方法二
    //_imageView.image = _image;
    
    //方法三
    _imageView.image = [UIImage imageNamed: [NSString stringWithFormat: @"%lu.jpg", _imageTag - 100]];
    
    //一个视图对象只能有一个根视图
    //当我们把试图添加到新的父亲视图上时
    //从原来的父亲视图中给删除掉
    [self.view addSubview: _imageView];
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
