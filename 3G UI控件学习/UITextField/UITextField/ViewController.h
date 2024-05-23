//
//  ViewController.h
//  UITextField
//
//  Created by 张旭洋 on 2023/7/15.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    //定义一个textField
    //文本输入区域
    //例如，用户名、密码等需要输入文本文字的内容区域
    //只能输入单行的文字，不能输入或显示多行
    UITextField* _textField;
    
    //是UIControl的子类，UIControl是UIView的子类，如：frame
}

@property (retain, nonatomic)UITextField* textField;

@end

