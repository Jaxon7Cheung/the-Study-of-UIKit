//
//  AppDelegate.m
//  UIWindoww
//
//  Created by 张旭洋 on 2023/6/1.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

//当程序框架初始化成功后
//调用此函数
//此函数用来初始化整个程序框架结构
//整个程序对iOS开发工程师的入口函数
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    //创建一个UIWindow对象
    //整个程序中只有一个UIWindow对象
    //UIWindow也是继承于UIView
    //UIWindow是一个特殊的UIView
    ///UIScreen：表示屏幕硬件表示类
    ///mainScreen获得主屏幕设备信息
    ///bounds表示屏幕的宽高值
    //self.window = [[UIWindow alloc] initWithFrame: [UIScreen mainScreen].bounds];
    //新版不用初始化
    
    return YES;
}


#pragma mark - UISceneSession lifecycle


- (UISceneConfiguration *)application:(UIApplication *)application configurationForConnectingSceneSession:(UISceneSession *)connectingSceneSession options:(UISceneConnectionOptions *)options {
    // Called when a new scene session is being created.
    // Use this method to select a configuration to create the new scene with.
    return [[UISceneConfiguration alloc] initWithName:@"Default Configuration" sessionRole:connectingSceneSession.role];
}


- (void)application:(UIApplication *)application didDiscardSceneSessions:(NSSet<UISceneSession *> *)sceneSessions {
    // Called when the user discards a scene session.
    // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
    // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
}


@end
