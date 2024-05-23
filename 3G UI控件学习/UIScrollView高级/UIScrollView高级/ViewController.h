//
//  ViewController.h
//  UIScrollView高级
//
//  Created by 张旭洋 on 2023/7/16.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
//当前视图控制器要实现协议UISCrollView的协议函数
<UIScrollViewDelegate>
{
    //定义一个滚动视图成员变量
    UIScrollView* _scrollView;
}

@end

