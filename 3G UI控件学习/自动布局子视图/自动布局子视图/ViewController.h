//
//  ViewController.h
//  自动布局子视图
//
//  Created by 张旭洋 on 2023/7/17.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    //创建父亲视图对象
    UIView* _superView;
    
    //左上角label
    UILabel* _label01;
    //右上角
    UILabel* _label02;
    //右下角
    UILabel* _label03;
    //左下角
    UILabel* _label04;
    
    UIView* _viewCenter;
}

@end

