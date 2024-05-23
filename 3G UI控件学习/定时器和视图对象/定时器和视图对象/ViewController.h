//
//  ViewController.h
//  定时器和视图对象
//
//  Created by 张旭洋 on 2023/6/6.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    //定义一个定时器对象
    //可以在每个固定时间发送一个消息
    //通过此消息来调用相应的事件函数
    //通过此函数可在固定时间段来完成一个根据时间间隔的任务
    NSTimer* _timerView;
}

//定时器的属性对象
@property (retain, nonatomic)NSTimer* timerView;



@end
