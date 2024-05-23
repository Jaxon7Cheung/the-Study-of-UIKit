//
//  ViewController.h
//  图片无限循环轮播
//
//  Created by 张旭洋 on 2023/7/24.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIScrollViewDelegate>

@property (nonatomic, strong)UIScrollView* scrollView;
@property NSUInteger currentImageIndex;
@property (nonatomic, strong)UIImageView* centerImageView;
@property (nonatomic, strong)UIImageView* leftImageView;
@property (nonatomic, strong)UIImageView* rightImageView;

@end

