//
//  ViewController.h
//  UISwitch
//
//  Created by 张旭洋 on 2023/6/7.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    //定义一个开关控件
    //可以进行状态的改变
    //开：关：两种状态可以切换
    //所有UIKit框架库中的控件均以UI开头
    //🍎官方的控件都定义在UIKit框架库中
    UISwitch* _mySwitch;
}

@property (retain, nonatomic)UISwitch* mySwitch;

@end

