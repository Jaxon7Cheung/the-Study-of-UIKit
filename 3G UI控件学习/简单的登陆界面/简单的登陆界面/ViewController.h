//
//  ViewController.h
//  简单的登陆界面
//
//  Created by 张旭洋 on 2023/7/15.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    //登陆界面的组成
    //用户名提示：输入框
    //密码提示：密码输入框
    //登陆按钮
    //注册按钮
    
    //用户名提示Label
    UILabel* _lbUserName;
    //密码提示Label
    UILabel* _lbPassword;
    
    //用户名输入框
    UITextField* _tfUserName;
    //密码输入框
    UITextField* _tfPassword;
    
    //登陆按钮
    UIButton* _btLogin;
    //注册按钮
    UIButton* _btRegister;
    
    UIAlertController* _alertView;
}

@end

