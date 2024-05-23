//
//  SceneDelegate.m
//  ViewController
//
//  Created by 张旭洋 on 2023/6/1.
//

#import "SceneDelegate.h"

#import "ViewController.h"

@interface SceneDelegate ()

@end

@implementation SceneDelegate


- (void)scene:(UIScene *)scene willConnectToSession:(UISceneSession *)session options:(UISceneConnectionOptions *)connectionOptions {
    // Use this method to optionally configure and attach the UIWindow `window` to the provided UIWindowScene `scene`.
    // If using a storyboard, the `window` property will automatically be initialized and attached to the scene.
    // This delegate does not imply the connecting scene or session are new (see `application:configurationForConnectingSceneSession` instead).
    
    //创建一个window对象
    //属于AppDelegate的属性
    //UIScreen：表示屏幕硬件类
    //mainScreen：获得主屏幕的信息
    //bounds：当前手机屏幕的大小尺寸
//    self.window = [[UIWindow alloc] initWithFrame: [UIScreen mainScreen].bounds];
    
    //创建视图控制器对象
    ViewController* vcRoot = [[ViewController alloc] init];
    
    //对窗口的根视图控制器进行赋值操作
    //整个UIKit框架中只有 **一个根视图控制器** ，属于window属性
    //视图控制器 用来管理界面和处理界面的逻辑类对象
    //程序启动前必须对根视图控制器赋值
    self.window.rootViewController = vcRoot;
    
    self.window.backgroundColor = [UIColor magentaColor];
    
    //将window作为主视图并显示出来
    [self.window makeKeyAndVisible];
}

- (void)sceneDidDisconnect:(UIScene *)scene {
    // Called as the scene is being released by the system.
    // This occurs shortly after the scene enters the background, or when its session is discarded.
    // Release any resources associated with this scene that can be re-created the next time the scene connects.
    // The scene may re-connect later, as its session was not necessarily discarded (see `application:didDiscardSceneSessions` instead).
}


- (void)sceneDidBecomeActive:(UIScene *)scene {
    // Called when the scene has moved from an inactive state to an active state.
    // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
}


- (void)sceneWillResignActive:(UIScene *)scene {
    // Called when the scene will move from an active state to an inactive state.
    // This may occur due to temporary interruptions (ex. an incoming phone call).
}


- (void)sceneWillEnterForeground:(UIScene *)scene {
    // Called as the scene transitions from the background to the foreground.
    // Use this method to undo the changes made on entering the background.
}


- (void)sceneDidEnterBackground:(UIScene *)scene {
    // Called as the scene transitions from the foreground to the background.
    // Use this method to save data, release shared resources, and store enough scene-specific state information
    // to restore the scene back to its current state.
}


@end
