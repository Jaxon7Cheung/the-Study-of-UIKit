//
//  ViewController.h
//  步进器和分栏控件
//
//  Created by 张旭洋 on 2023/6/8.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    //定义步进器对象
    //按照一定的数值来调整某个数据
    UIStepper* _stepper;
    
    //分栏控制器定义
    UISegmentedControl* _segControl;
}

//属性定义
@property (retain, nonatomic)UIStepper* stepper;
@property (retain, nonatomic)UISegmentedControl* segControl;

@end

