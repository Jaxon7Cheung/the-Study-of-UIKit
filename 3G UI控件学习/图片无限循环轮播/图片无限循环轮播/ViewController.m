//
//  ViewController.m
//  图片无限循环轮播
//
//  Created by 张旭洋 on 2023/7/24.
//

#import "ViewController.h"
#define WIDTH [UIScreen mainScreen].bounds.size.width
#define HEIGHT [UIScreen mainScreen].bounds.size.height
#define kImageCount 5

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self scrollVieww];
    self.scrollView.backgroundColor = [UIColor systemMintColor];
    self.leftImageView = [[UIImageView alloc] init];
    self.leftImageView.frame = CGRectMake(0, 0, WIDTH, HEIGHT);
    self.centerImageView = [[UIImageView alloc] init];
    self.centerImageView.frame = CGRectMake(WIDTH, 0, WIDTH, HEIGHT);
    self.rightImageView = [[UIImageView alloc] init];
    self.rightImageView.frame = CGRectMake(WIDTH * 2, 0, WIDTH, HEIGHT);
    self.scrollView.delegate = self;
    [self.scrollView addSubview: self.centerImageView];
    [self.scrollView addSubview: self.leftImageView];
    [self.scrollView addSubview: self.rightImageView];
    //[self reloadImage];

    
    [self.view addSubview: self.scrollView];
}

- (UIScrollView *)scrollVieww {
    if (self.scrollView == nil) {
        self.scrollView = [[UIScrollView alloc] initWithFrame: CGRectMake(0, 0, WIDTH, HEIGHT)];
        self.scrollView.bounces = NO;
        self.scrollView.showsVerticalScrollIndicator = NO;
        self.scrollView.showsHorizontalScrollIndicator = YES;
        self.scrollView.pagingEnabled = YES;
        self.scrollView.contentSize = CGSizeMake(WIDTH * 3, HEIGHT);
        [self.scrollView setContentOffset: CGPointMake(WIDTH, 0) animated: NO];
    }
    return self.scrollView;
}

- (void)reloadImage {
    NSUInteger leftImageIndex, rightImageIndex;
    CGPoint offset = [self.scrollView contentOffset];
    
    if (offset.x == 2 * WIDTH) {
        self.currentImageIndex = (self.currentImageIndex + 1) % kImageCount;
    } else if (offset.x == 0) {
        self.currentImageIndex = (self.currentImageIndex - 1) % kImageCount;
    }
    
    self.centerImageView.image = [UIImage imageNamed: [NSString stringWithFormat: @"i%lu.jpg", self.currentImageIndex + 1]];
    
    //重新设置左右图片
    leftImageIndex = (self.currentImageIndex - 1) % kImageCount;
    rightImageIndex = (self.currentImageIndex + 1) % kImageCount;
    
    self.leftImageView.image = [UIImage imageNamed: [NSString stringWithFormat: @"i%lu.jpg", leftImageIndex + 1]];
    self.rightImageView.image = [UIImage imageNamed: [NSString stringWithFormat: @"i%lu.jpg", rightImageIndex + 1]];
}

- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView {
    [self reloadImage];
    [self.scrollView setContentOffset: CGPointMake(WIDTH, 0) animated: NO];
}

@end
