//
//  ViewController.h
//  警告对话框和等待提示器
//
//  Created by 张旭洋 on 2023/6/8.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIAlertViewDelegate> {
    
    //定义一个警告对话框视图对象
    UIAlertController* _alertView;
    
    //等待提示对象
    //当下载或加载比较大的文件时，可以显示此控件，处于提示等待状态
    UIActivityIndicatorView* _activityIndicator;
    
}

@property (retain, nonatomic) UIAlertController* alertView;
@property (retain, nonatomic) UIActivityIndicatorView* activityIndicator;

@end

